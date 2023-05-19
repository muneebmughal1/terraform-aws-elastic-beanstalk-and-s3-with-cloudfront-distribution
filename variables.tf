variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}
variable "region" {
  type = string
}
variable "env_vars" {
  type = map(string)
  default = {
  }
}
variable "environments" {
  type = list(object({
    tenant_name = string
    environment = string
  }))
}
variable "tenant_name" {
  type = string
}