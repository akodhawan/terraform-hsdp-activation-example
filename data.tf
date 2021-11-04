data "hsdp_iam_org" "org" {
  count = length(var.iam_org_id)
  organization_id = var.iam_org_id[count.index]
}

data "hsdp_iam_users" "unverified" {
  count = length(data.hsdp_iam_org.org)
  organization_id = data.hsdp_iam_org.org[count.index].id

  email_verified = false
  disabled       = true
}

data "terraform_remote_state" "local" {
  backend = "local"

  defaults = {
    unverified_user_ids = []
  }
}
