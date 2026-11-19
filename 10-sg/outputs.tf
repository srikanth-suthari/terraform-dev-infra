output "sg_id" {
    value = module.sg[*].sg_id
}

# Checking for a single subnet_id
output "sg_ids" {
    value = module.sg[0].sg_id
}