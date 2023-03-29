resource "aws_instance" "main" {
    aim = data.aws_ssm_parameter.instance_ami.value
    instance_type = "t3.micro"
    key_name = "aaron"
    subnet_id = aws_subnet.public[0].id
    vpc_security_group_ids = ["sg-02b8a0476d7b403c7"]
    tags = {
        "Name" = "${var.default_tags.env}-EC2"
    }
        #user-data = base64encode(file("whereever the userdata is located"))
}
