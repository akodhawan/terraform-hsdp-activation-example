output "unverified_user_loginids" {
  value = flatten(data.hsdp_iam_users.unverified.*.logins)
}

output "last_activations_emails" {
  value = hsdp_iam_activation_email.active
}

