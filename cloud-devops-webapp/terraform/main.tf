resource "aws_security_group" "streamlit_sg" {
  name = "streamlit-sg"

  ingress {
    from_port   = 8501
    to_port     = 8501
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_ecr_repository" "streamlit_repo" {
  name = "streamlit-repo"
}

resource "aws_instance" "streamlit_server" {
  ami                    = "ami-03f4878755434977f"
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.streamlit_sg.id]

  user_data = file("userdata.sh")

  tags = {
    Name = "Streamlit-Server"
  }
}
