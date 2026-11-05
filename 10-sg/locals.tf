locals {
    common_prefix_name = "${var.project_name}-${var.environment}"

    common_tags = {
        Terraform = true
        DoNotDelete = true
    }
}