
module "folders_level1" {
  source = "git::https://github.com/testing-st/import.git//modules/folders?ref=main"

  for_each = var.folder_hierarchy.level1

  parent              = each.value.parent
  folder_name         = each.value.folder_name
  tags                = lookup(each.value, "tags", {})
  deletion_protection = lookup(each.value, "deletion_protection", false)

}

module "folders_level2" {
  source = "git::https://github.com/testing-st/import.git//modules/folders?ref=main"

  for_each = var.folder_hierarchy.level2

  parent              = module.folders_level1[each.value.parent].folder_id
  folder_name         = each.value.folder_name
  tags                = lookup(each.value, "tags", {})
  deletion_protection = lookup(each.value, "deletion_protection", false)

  depends_on = [module.folders_level1]
}

module "folders_level3" {
  source = "git::https://github.com/testing-st/import.git//modules/folders?ref=main"

  for_each = var.folder_hierarchy.level3

  parent              = module.folders_level2[each.value.parent].folder_id
  folder_name         = each.value.folder_name
  tags                = lookup(each.value, "tags", {})
  deletion_protection = lookup(each.value, "deletion_protection", false)

  depends_on = [module.folders_level2]
}

module "folders_level4" {
  source = "git::https://github.com/testing-st/import.git//modules/folders?ref=main"

  for_each = var.folder_hierarchy.level4

  parent              = module.folders_level3[each.value.parent].folder_id
  folder_name         = each.value.folder_name
  tags                = lookup(each.value, "tags", {})
  deletion_protection = lookup(each.value, "deletion_protection", false)

  depends_on = [module.folders_level3]
}

module "folders_level5" {
  source = "git::https://github.com/testing-st/import.git//modules/folders?ref=main"

  for_each = var.folder_hierarchy.level5

  parent              = module.folders_level4[each.value.parent].folder_id
  folder_name         = each.value.folder_name
  tags                = lookup(each.value, "tags", {})
  deletion_protection = lookup(each.value, "deletion_protection", false)

  depends_on = [module.folders_level4]
}

module "folders_level6" {
  source = "git::https://github.com/testing-st/import.git//modules/folders?ref=main"

  for_each = var.folder_hierarchy.level6

  parent              = module.folders_level5[each.value.parent].folder_id
  folder_name         = each.value.folder_name
  tags                = lookup(each.value, "tags", {})
  deletion_protection = lookup(each.value, "deletion_protection", false)

  depends_on = [module.folders_level5]
}

module "folders_level7" {
  source = "git::https://github.com/testing-st/import.git//modules/folders?ref=main"

  for_each = var.folder_hierarchy.level7

  parent              = module.folders_level6[each.value.parent].folder_id
  folder_name         = each.value.folder_name
  tags                = lookup(each.value, "tags", {})
  deletion_protection = lookup(each.value, "deletion_protection", false)

  depends_on = [module.folders_level6]
}

