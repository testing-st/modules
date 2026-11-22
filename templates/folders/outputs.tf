
output "folders_level1" {
  value = { for k, v in module.folders_level1 : k => v.folder_id }
}

output "folders_level2" {
  value = { for k, v in module.folders_level2 : k => v.folder_id }
}

output "folders_level3" {
  value = { for k, v in module.folders_level3 : k => v.folder_id }
}

output "folders_level4" {
  value = { for k, v in module.folders_level4 : k => v.folder_id }
}

output "folders_level5" {
  value = { for k, v in module.folders_level5 : k => v.folder_id }
}

output "folders_level6" {
  value = { for k, v in module.folders_level6 : k => v.folder_id }
}

output "folders_level7" {
  value = { for k, v in module.folders_level7 : k => v.folder_id }
}