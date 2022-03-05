data "aws_ami" "amzaon_linux" {
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.*-x86_64-gp2"]
  }
  owners = ["amazon"]
}

resource "aws_instance" "ec2-lab" {
  ami           = data.aws_ami.amzaon_linux.id
  instance_type = "t2.micro"
}

