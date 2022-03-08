output "config_role_name" {
  description = "The name of Configrole which will be used by config service"
  value = aws_iam_role.config_role.name
  
}
