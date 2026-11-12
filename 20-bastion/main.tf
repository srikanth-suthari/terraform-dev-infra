resource "aws_instance" "terraform" {
    ami = "ami-0332d564d76dbd8d6"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
        Name = "Bastion Host"
        terraform = "true"
    }
}