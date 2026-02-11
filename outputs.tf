output "vpc_id" {
  value = aws_vpc.main.id
}

output "private_ec2_id" {
  value = aws_instance.private_ec2.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat.id
}
