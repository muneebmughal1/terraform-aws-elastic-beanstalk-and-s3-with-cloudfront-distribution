locals {
  tenant_name  = var.tenant_name
  environments = var.environments

}

module "cloudfront" {
  for_each              = { for instance in local.environments : instance.tenant_name => instance }
  source                = "./modules/cloud_front"
  enable_route53_record = false

  environment = each.value.tenant_name
  name        = "${each.value.tenant_name}-cloud-front"

  load_balancer_arn           = ""
  bucket_id                   = module.s3-bucket[each.value.tenant_name].s3_bucket_id
  origin_access_identity      = module.s3-bucket[each.value.tenant_name].origin_access_identity
  elastic_beanstalk_env_id    = "${each.value.tenant_name}-api"
  elastic_beanstalk_env_cname = module.elastic-beanstalk.aws_elastic_beanstalk[each.value.tenant_name].cname
  min_ttl                     = 0
  default_ttl                 = 0
  max_ttl                     = 0

  tags = {
    Environment = "${each.value.environment}"
    Tenant      = "${each.value.tenant_name}"
  }

  custom_error_response = [
    {
      "error_code"         = 403
      "response_code"      = 200
      "response_page_path" = "/index.html"
    },
    {
      "error_code"         = 404
      "response_code"      = 200
      "response_page_path" = "/index.html"
    },
  ]

  bucket_force_destroy = true
}

data "aws_caller_identity" "current" {}

data "aws_availability_zones" "available" {}

module "s3-bucket" {
  for_each    = { for instance in local.environments : instance.tenant_name => instance }
  source      = "./modules/s3"
  bucket_name = each.value.tenant_name
  tags = {
    Environment = "${each.value.environment}"
    tenant      = "${each.value.tenant_name}"
  }
}

module "elastic-beanstalk" {
  source                = "./modules/elastic_beanstalk"
  app_name              = local.tenant_name
  environments          = local.environments
  environment_variables = var.env_vars
}
