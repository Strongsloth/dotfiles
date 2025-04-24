---@type NvLspConfig
require("nvchad.configs.lspconfig").defaults()
local servers = { "html", "cssls", "ts_ls", "emmet_language_server", "clangd", "tailwindcss", "marksman" }

vim.lsp.config("ts_ls", {
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
  filetypes = {
    "javascript",
    "typescript",
  },
})

vim.lsp.config("emmet_language_server", {

  filetypes = {
    "css",
    "eruby",
    "html",
    "javascript",
    "javascriptreact",
    "less",
    "sass",
    "scss",
    "pug",
    "typescriptreact",
  },
  init_options = {
    ---@type table<string, string>
    includeLanguages = {},
    --- @type string[]
    excludeLanguages = {},
    --- @type string[]
    extensionsPath = {},
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
    preferences = {},
    --- @type boolean Defaults to `true`
    showAbbreviationSuggestions = true,
    --- @type "always" | "never" Defaults to `"always"`
    showExpandedAbbreviation = "always",
    --- @type boolean Defaults to `false`
    showSuggestionsAsSnippets = false,
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
    syntaxProfiles = {},
    --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
    variables = {},
  },
})

vim.lsp.config("cssls", {
  priority = 20,
  filetypes = {
    "html",
    "css",
  },
  init_options = {},
})

-- vim.lsp.config("tailwindcss", {
--
--   cmd = { "tailwindcss-language-serer", "--stdio" },
--   filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
--   root_dir = vim.lsp.util.root_pattern("tailwind.config.js", "package.json"),
--   settings = {
--     tailwindCSS = {
--       classAttributes = { "class", "className", "class:list", "classList", "ngClass" },
--       includeLanguages = {
--         eelixir = "html-eex",
--         eruby = "erb",
--         htmlangular = "html",
--         templ = "html",
--       },
--       lint = {
--         cssConflict = "warning",
--         invalidApply = "error",
--         invalidConfigPath = "error",
--         invalidScreen = "error",
--         invalidTailwindDirective = "error",
--         invalidVariant = "error",
--         recommendedVariantOrder = "warning",
--       },
--       validate = true,
--     },
--   },
-- })
vim.lsp.config("marksman", {
  cmd = { "marksman", "server" },
  filetypes = { "markdown", "markdown.mdx" },
  root_markers = { ".marksman.toml", ".git" },
})

vim.lsp.enable(servers)
