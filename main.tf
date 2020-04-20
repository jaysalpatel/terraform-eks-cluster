###EKS Terraform module

module "eks" {
    source                      = "./modules"
    aws-region                  = "us-east-1"
    availability-zones          = "us-east-1a"
    cluster-name                = "eks-cluster"
    k8s-version                 = "1.15"
    node-instance-type          = "t2.micro"
    kublet-extra-args           = var.kublet-extra-args
    public-kublet-extra-args    = var.public-kublet-extra-args
    root-block-size             = var.root-block-size
    desired-capacity            = var.desired-capacity
    max-size                    = "2"
    min-size                    = "1"
    public-desired-capacity     = var.public-desired-capacity
    vpc-subnet-cidr             = "172.31.0.0/16"
    private-subnet-cidr         = "172.31.32.0/20"
    public-subnet-cidr          = "172.31.16.0/20"
    db-subnet-cidr              = var.db-subnet-cidr
    eks-cw-logging              = var.cw-logging
    ec2-key-public-key          = "key.pem" 
}
