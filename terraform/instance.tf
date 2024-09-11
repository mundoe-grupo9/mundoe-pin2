resource "aws_instance" "my_instance" {
  ami                    = data.aws_ami.amazon-linux-2.image_id
  instance_type          = var.AWS_INSTANCE_TYPE
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.my_sg.id]

  user_data = file("../user_data.sh")

  key_name = aws_key_pair.deployer.key_name

  tags = {
    Name     = var.instance_name
    owner    = var.OWNER
    funciona = "ok"


  }
}
