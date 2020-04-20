output "kubeconfig" {
    value       = module.eks.kubeconfig
    description = "EKS Kubeconfig"
}

output "config-map" {
    value           = module.eks.config-map-aws-auth
    description     = "kubernetes config map to authorize"
    
}
