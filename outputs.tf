output "cdn_urls" {
  value = module.cloudfront
}
output "elastic_beanstalk_app" {
  value = module.elastic-beanstalk.elastic_beanstalk_app.name
}
output "elastic_beanstalk_envs" {
  value = module.elastic-beanstalk.elastic_beanstalk_env
}
output "s3_buckets" {
  value = module.s3-bucket
}