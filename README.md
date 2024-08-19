# To-Do App Deployment

## CI/CD Flow

1. **Build and Push Docker Image**:
   - CircleCI triggers on every push to the `main` branch.
   - Docker image is built and pushed to Docker Hub.

2. **Deployment**:
   - Kubernetes manifests are applied to the cluster.
   - The app is deployed with high availability (3 replicas).
   - MySQL is deployed with a persistent volume.

## Local Testing

- Run the script `update-hosts.sh` to map `tools.devops-openweb.com` to the app's IP address.

## Accessing the App

- Access the app at `http://tools.devops-openweb.com/todo`.
