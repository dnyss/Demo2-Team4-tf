output "ec2_public_ip" {
    value = aws_instance.web.public_ip
}

output "public_subnet_id" {
    value = aws_subnet.public.id
}

output "vpc_id" {
    value = aws_vpc.main.id
}

output "ec2_ami" {
    value = aws_instance.web.ami
}
