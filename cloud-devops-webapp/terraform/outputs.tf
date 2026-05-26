output "public_ip" {
  value = aws_instance.streamlit_server.public_ip
}

output "ecr_url" {
  value = aws_ecr_repository.streamlit_repo.repository_url
}
