# EKS Access Troubleshooting Script (EAT)
EAT is a script to help troubleshoot EKS connection issues while using kubectl. Connecting to EKS clusters using kubectl depends on many prerequisites

1. Kubectl to be present
2. Kubeconfig file exists
3. AWS credentials are valid
4. The AWS Identty is authorised to connect to EKS clusters


Checking these manaully can be cumbersome and especially confusing for beginers with AWS and Kubernetes knowledge. This script checks a few things and tries to
show any missing tools or permissions that are blocking EKS access. 

## How to use it 

### Oneliner

```bash

curl -O https://raw.githubusercontent.com/bit-cloner/eks-access-troubleshooter/refs/heads/main/eat.sh && chmod +x eat.sh && ./eat.sh

```
## who is this for
- EKS users
- Support engineers
- EKS Administrators
- AWS administrators



<h3 align="left">Support Me:</h3>
<p><a href="https://www.buymeacoffee.com/welldone"> <img align="left" src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" height="50" width="210" alt="welldone" /></a></p><br><br>