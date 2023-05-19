# Create a new Elastic Beanstalk application
resource "aws_elastic_beanstalk_application" "elastic_beanstalk_application" {
  name = var.app_name
}


# Create a new Elastic Beanstalk environment for the application
resource "aws_elastic_beanstalk_environment" "elastic_beanstalk_environment" {
  for_each               = { for instance in var.environments : instance.tenant_name => instance }
  name                   = each.value.environment
  application            = aws_elastic_beanstalk_application.elastic_beanstalk_application.name
  solution_stack_name    = var.solution_stack_name
  wait_for_ready_timeout = var.wait_for_ready_timeout

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = "aws-elasticbeanstalk-ec2-role"
  }
  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "EnvironmentType"
    value     = "SingleInstance"
  }
  dynamic "setting" {
    for_each = var.environment_variables
    iterator = env_var
    content {
      namespace = "aws:elasticbeanstalk:application:environment"
      name      = env_var.key
      value     = env_var.value
    }
  }
}