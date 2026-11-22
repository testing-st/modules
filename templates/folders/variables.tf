variable "folder_hierarchy" {
  type = object({
    level1 = optional(map(object({
      folder_name         = string
      parent          = string
      tags                = optional(map(string), {})
      deletion_protection = optional(bool, false)
    })), {})

    level2 = optional(map(object({
      folder_name         = string
      parent          = string
      tags                = optional(map(string), {})
      deletion_protection = optional(bool, false)
    })), {})

    level3 = optional(map(object({
      folder_name         = string
      parent          = string
      tags                = optional(map(string), {})
      deletion_protection = optional(bool, false)
    })), {})

    level4 = optional(map(object({
      folder_name         = string
      parent          = string
      tags                = optional(map(string), {})
      deletion_protection = optional(bool, false)
    })), {})

    level5 = optional(map(object({
      folder_name         = string
      parent          = string
      tags                = optional(map(string), {})
      deletion_protection = optional(bool, false)
    })), {})

    level6 = optional(map(object({
      folder_name         = string
      parent          = string
      tags                = optional(map(string), {})
      deletion_protection = optional(bool, false)
    })), {})

    level7 = optional(map(object({
      folder_name         = string
      parent          = string
      tags                = optional(map(string), {})
      deletion_protection = optional(bool, false)
    })), {})
  })
}