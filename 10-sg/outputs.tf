output "sg_id" {
    value = module.sg[*].sg_id
}

# Checking for a single subnet_id
output "sg_ids" {
    value = module.sg[0].sg_id
}

# output "bastion_sg_id" {
#     value = data.aws_ssm_parameter.bastion_sg_id
#     sensitive = true
# }

output "bastion_sg_id" {
  value = nonsensitive(data.aws_ssm_parameter.bastion_sg_id.value)
}