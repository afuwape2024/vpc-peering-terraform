#create ec2 instance in detroit_vpc_public_subnet
resource "aws_instance" "detroit_public_ec2" {
  ami           = var.ami_id_ubuntu
  instance_type = "t2.nano"  
  vpc_security_group_ids = [var.detroit_vpc_public_sg]
  subnet_id     = var.detroit_vpc_public_subnet
  count = 1
  tags = {
        "Name" = "Ubuntu_detroit_public_ec2"
    }
}

#create ec2 instance in detroit_vpc_public2_subnet
resource "aws_instance" "detroit_public2_ec2" {
  ami           = var.ami_id_linux
  instance_type = "t2.nano"  
  subnet_id     = var.detroit_vpc_public2_subnet
  vpc_security_group_ids = [var.detroit_vpc_public_sg]
  count = 0
  tags = {
        "Name" = "Linux_detroit_public2_ec2"
    }
} 
