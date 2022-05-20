module "module_attach" {
  count = 2
  source           = "./instance_module"
  instance_profile = aws_iam_instance_profile.profile_name.id
  security_group   = aws_security_group.groupname.id
}