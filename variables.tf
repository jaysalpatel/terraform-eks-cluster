####Configuration for variables

variable "cluster-name" {
    default     = "eks-cluster"
    type        = string
    description = "the name of your EKS cluster"
}

variable "aws-region" {
    default     = "us-east-1"
    type        = string
    description = "the aws region to deploy your cluster"
}

variable "availibility-zones" {
    default     = ["us-east-1a", "us-east-1b"]
  
}

