output "unverified_user_ids" {
  value = data.hsdp_iam_users.unverified.ids
}

output "unverified_user_logins" {
  value = data.hsdp_iam_users.unverified.logins
}
