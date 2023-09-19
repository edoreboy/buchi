resource "aws_lightsail_instance" "example" {
  name               = "my-lightsail-instance"
  availability_zone = "us-east-1a"
  blueprint_id       = "amazon_linux_2"
  Instance_plan_key  = "nano_2_0"

  user_data = <<-EOF
    #!/bin/bash
    sudo yum install httpd -y
    sudo systemctl start httpd
    sudo systemctl enable httpd
    sudo echo "<h1>This Server is created using Terraform </h1>" >> /var/www/html/index.html
  EOF
}