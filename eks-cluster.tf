###EKS Cluster resources

variable "cluster-name" {

}
variable "vpc-subnet-cidr" {

}

variable "eks-cw-logging" {

}

resource "aws_eks_cluster" "eks" {
    name = "${var.cluster-name}"
    version = 1.15 
    role_arn = "${aws_iam_role.cluster.arn}"
    
    vpc_config {
        security_group_ids = [data.aws_security_group.id]
        subnet_ids         = [data.aws_subnet_ids.private.ids]

    }

    enabled_cluster_log_types = var.eks-cw-logging

    depends_on = [
        "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
        "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
    ]
}
