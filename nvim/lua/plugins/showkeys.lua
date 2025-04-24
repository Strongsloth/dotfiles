---@type NvPluginSpec
return {
  "nvzone/showkeys",
  cmd = "ShowkeysToggle",
  enabled = true,
  opts = {
    timeout = 1,
    maxkeys = 4,
    show_count = true,
    position = "top-right",
  },
}
