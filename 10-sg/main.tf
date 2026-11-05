module catalogue {
    source = "terraform-aws-modules/security-group/aws"

    # Name of the security group
    name = "${local.common_prefix_name}-catalogue_sg"
    description = "This security group will use the below vpc_id"
    vpc_id = data.aws_ssm_parameter.vpc_id.value # In which vpc our sg should get created

    tags = local.common_tags
}