output "detroit_public_ec2_ids" {
  value = aws_instance.detroit_public_ec2[*].id
}

output "detroit_public2_ec2_ids" {
  value = aws_instance.detroit_public2_ec2[*].id
}
