output "region" {
  value = var.region
}

output "project_name" {
  value = var.project_name
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.pub.id
}

output "private_subnet_id" {
  value = aws_subnet.pri.id
}

output "internet_gateway" {
    value = aws_internet_gateway.igw
}