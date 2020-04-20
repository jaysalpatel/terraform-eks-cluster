Build a EKS cluster using Terraform

1. 








###Problems:
Resources not being created with terraform scripts because of amazoneksclusterpolicy, amazonEKSWorkerNodePolicy, amazonAWSServicePolicy, AmazonEKS_CNI_policy not attached to the user




Error:
AWS cli handling config files a little more robustly
aws eks --region us-east-1 update-kubeconfig --name eks-cluster

'NoneType' object is not iterable


Solution:

//Start with fresh file
rm ~/.kube/config

//Update with the context you want 
aws eks update-kubeconfig --name eks-cluster --region us-east-1

//Use kubectl to delete the context
kubectl config delete-context arn:aws:eks:us-east-1:536510685689:cluster/eks-cluster

//reapply the config
aws eks update-kubeconfig --name eks-cluster --region us-east-1