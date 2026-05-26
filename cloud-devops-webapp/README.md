# Cloud DevOps Web App

Replace `YOUR_ECR_URL` in `.github/workflows/deploy.yml` with your real ECR repository URL before using the pipeline.

## Structure
- `app.py` - Streamlit app
- `Dockerfile` - container build instructions
- `terraform/` - AWS infrastructure code
- `.github/workflows/deploy.yml` - GitHub Actions CI/CD
