
provider "aws" {
  region = "us-east-1"
}

resource "aws_eks_cluster" "eks_cluster" {
  name     = "${terraform.workspace}-eks-cluster"
  role_arn = var.role_arn

  vpc_config {
    subnet_ids = [
      aws_subnet.public_1.id,
      aws_subnet.public_2.id
    ]
  }

  tags = {
    Environment = terraform.workspace
  }
}


resource "aws_eks_node_group" "node_group" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "${terraform.workspace}-node-group"
  node_role_arn   = var.role_arn
    
  scaling_config {
    desired_size = 4
    min_size     = 1
    max_size     = 5
  }

  subnet_ids = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]


  instance_types = var.instance_types
  capacity_type  = "ON_DEMAND"

  tags = {
    Environment = terraform.workspace
  }
}

locals {
  ecr_names = [
    for name in var.ecr_repos :
    "${name}-${terraform.workspace}"
  ]
}

resource "aws_ecr_repository" "repos" {
  for_each = toset(local.ecr_names)

  name = each.key

  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name       = each.key
    Workspace  = terraform.workspace
    BaseName   = replace(each.key, "-${terraform.workspace}", "")
  }
}


terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "terraformbucketdevops305558"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    workspace_key_prefix = "terraform/state" 
  }
}