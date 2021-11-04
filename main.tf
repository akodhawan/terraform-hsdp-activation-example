resource "hsdp_iam_activation_email" "active" {
  for_each = toset(data.terraform_remote_state.local.outputs.unverified_user_ids)

  user_id = each.key

  resend_every = 1
}
