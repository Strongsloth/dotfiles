---@type NvPluginSpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "nim",
      "lua",
      "vimdoc",
      "html",
      "css",
    },
  },
}
