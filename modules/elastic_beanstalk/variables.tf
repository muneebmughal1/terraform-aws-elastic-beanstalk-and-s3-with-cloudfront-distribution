variable "app_name" {
  description = "Name of your application."
  type        = string
}
variable "solution_stack_name" {
  description = "Name of your solution stack name."
  type        = string
  default     = "64bit Amazon Linux 2 v5.8.1 running Node.js 16"
}
variable "wait_for_ready_timeout" {
  description = "waiting time."
  type        = string
  default     = "60m"
}
variable "environment_variables" {
  type = map(string)
}
variable "environments" {
  type = list(object({
    tenant_name = string
    environment = string
  }))
}