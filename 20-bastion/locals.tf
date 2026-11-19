locals {
    # Retrieving the ami_id using data sources using the owner id and name of the image attributes
    ami_id = data.aws_ami.joindevops.id
    #Bastion sg is created by the sg module, stored in ssm parameters and we are retrieving it using data sources
    bastion_sg_id = data.aws_ssm_parameter.bastion_sg_id.value
    common_tags = {
        Project = var.project_name
        Environment = var.environment
        Terraform = "true"
    }
}