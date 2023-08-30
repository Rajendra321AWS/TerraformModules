variable "region" {}
variable "project_name" {}
variable "vpc_cidr" {
    default = "10.0.0.0/16"
}
variable "pub_subnet_cidr" {
    default = "10.0.1.0/24"
}