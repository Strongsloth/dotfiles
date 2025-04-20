---@type NvPluginSpec
return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "lua-language-server",
      "typescript-language-server",
      "emmet-language-server",
      "html-lsp",
      "css-lsp",
      "stylua",
      "prettier",
      "clangd",
      "clang-format",
      "marksman",
    },
  },
}
