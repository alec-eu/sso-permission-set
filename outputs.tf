output "name" {
  description = "The Name of the SSO Permission Set"
  value       = aws_ssoadmin_permission_set.name
}

output "arn" {
  description = "The ARN of the SSO Permission Set"
  value       = aws_ssoadmin_permission_set.arn
}

output "session_duration" {
  description = "The Session Duration of the SSO Permission Set"
  value       = aws_ssoadmin_permission_set.session_duration
}
