output "unverified_user_loginids" {
  value = flatten(data.hsdp_iam_users.unverified.*.logins)
}

output "last_activations_emails" {
  value = hsdp_iam_activation_email.active
}

output "unverified_users" {
  value = data.hsdp_iam_users.unverified
}

output "unverified_users_ids" {
  value = data.terraform_remote_state.local.outputs.unverified_user_ids
}
