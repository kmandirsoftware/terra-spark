
resource "aws_instance" "app_server" {
  ami                    = "ami-07c1207a9d40bc3bd"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0916d5b63b00f128b","sg-00c28ccd2c1e8d4d3","sg-086f05598bdff2075"]
  subnet_id              = "subnet-0aa8366631277c1d2"
  key_name = "sparkenv"

  tags = {
    Name = var.ec2_name
    Environment = "dev"
  }
}
