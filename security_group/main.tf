# 보안그룹 모듈 리소스 정의

resource "aws_security_group" "this" {
  name = var.sg_name
  description = var.description


  ingress { # 인바운드 규칙
    description = "Allow HTTP from anywhere"
    from_port = var.ingress_port
    to_port = var.ingress_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress { # 인바운드 규칙
    description = "Allow SSH from anywhere"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {  # 아웃바운드 규칙
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name

  }


}



