provider "aws" {
  access_key = "AKIA5V6IRZHDIA3HZCTD"
  secret_key = ""
  region = "ap-south-1"
}
resource "aws_instance" "Ins-1" {
  ami = "ami-0a7cf821b91bcccbc"
  instance_type = "t2.micro"
  key_name = "test-oct"
  tags = {
    Name = "k8s-slave1"
  }
}
resource "aws_instance" "Ins-2" {
  ami = "ami-0a7cf821b91bcccbc"
  instance_type = "t2.medium"
  key_name = "test-oct"
  tags = {
    Name = "k8s-master"
  }
}
resource "aws_instance" "Ins-3" {
  ami = "ami-0a7cf821b91bcccbc"
  instance_type = "t2.micro"
  key_name = "test-oct"
  tags = {
    Name = "k8s-slave2"
  }
}
