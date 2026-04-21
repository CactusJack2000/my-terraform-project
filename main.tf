# main.tf – EC2 instancia
resource "aws_instance" "app_server" {
  # resource type ^^^        # resource name ^^^

  ami           = "ami-0e12ffc2dd465f6e4"   # Amazon Linux 2
  instance_type = "t3.small"

  tags = {
    Name = "ecommerce-app"
  }
}
# Referencovanie: aws_instance.app_server.id
#                 resource_type.resource_name.attribute