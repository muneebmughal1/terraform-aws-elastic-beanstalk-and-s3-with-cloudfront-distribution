output "elastic_beanstalk_app" {
  value = aws_elastic_beanstalk_application.elastic_beanstalk_application
}
output "aws_elastic_beanstalk" {
  value = aws_elastic_beanstalk_environment.elastic_beanstalk_environment
}
output "elastic_beanstalk_env" {
  value = [for instance in aws_elastic_beanstalk_environment.elastic_beanstalk_environment : instance.name]
}