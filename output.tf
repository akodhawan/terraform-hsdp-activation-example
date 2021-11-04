output "unverified_users" {
  value = data.hsdp_iam_users.unverified
}

output "unverified_user_loginids" {
  value = data.hsdp_iam_users.unverified.*.logins
}
