output "web_public_ip" {
  description = "Public IPv4 address of the web/application EC2 instance"
  value       = aws_instance.web.public_ip
}

output "web_public_dns" {
  value = aws_instance.web.public_dns
}

output "db_private_ip" {
  description = "Private IPv4 address of the MongoDB EC2 instance"
  value       = aws_instance.db.private_ip
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}
