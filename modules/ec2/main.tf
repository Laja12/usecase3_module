
resource "aws_instance" "web" {
  count         = length(var.subnet_ids)
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_ids[count.index]

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y apache2
              systemctl start apache2
              systemctl enable apache2
              EOF
}
