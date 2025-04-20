---@type NvPluginSpec
return {
  "barrett-ruth/live-server.nvim",
  build = "pnpm add -g live-server",
  cmd = { "LiveServerStart", "LiveServerStop" },
  opts = {
    args = {
      "--port=8000",
      "--browser=brave",
    },
  },
}
