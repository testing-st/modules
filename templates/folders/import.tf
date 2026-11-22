# -----------------------------------------------------------------------------
# Declarative Terraform 1.5+ import configuration.
# Running 'terraform plan' imports these existing GCP resources into state
# without modifying or recreating them.
# -----------------------------------------------------------------------------

import {
  to = module.folders_level1["demo"].google_folder.folder
  id = "folders/157500553541"
}

import {
  to = module.folders_level1["demo2"].google_folder.folder
  id = "folders/435778850311"
}

import {
  to = module.folders_level1["dev"].google_folder.folder
  id = "folders/554496917526"
}

import {
  to = module.folders_level2["dev_2"].google_folder.folder
  id = "folders/852895051083"
}
