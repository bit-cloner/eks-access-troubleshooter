EAT is a script to help troubleshoot EKS connection issues while using kubectl. Connecting to EKS clusters using kubectl depends on main prerequisites

1. Kubectl to be present
2. Kubeconfig file exists
3. AWS credentials are valid
4. The AWS Identty is authorised to connect to EKS clusters
5. 

Checking these manaully can be cumbersome and especially confusing for beginers with AWS and Kubernetes knowledge. This script checks a few things tried to
present any missing tools or permissions that are blocking EKS access. 