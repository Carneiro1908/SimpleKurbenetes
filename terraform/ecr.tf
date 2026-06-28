resource "aws_ecr_repository" "my_app" {
  name                 = "my-app-repo" 
  image_tag_mutability = "MUTABLE"    

  image_scanning_configuration {
    scan_on_push = true
  }
}

output "ecr_url" {
  value       = aws_ecr_repository.my_app.repository_url
  description = "A URL do repositório ECR criado"
}