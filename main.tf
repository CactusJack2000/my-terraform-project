# main.tf – EC2 instancia
resource "aws_instance" "app_server" {
  # resource type ^^^        # resource name ^^^

  ami           = "ami-0c55b159cbfafe1f0"   # Amazon Linux 2
  instance_type = "t3.medium"

  tags = {
    Name = "ecommerce-app"
  }
}
# Referencovanie: aws_instance.app_server.id
#                 resource_type.resource_name.attribute