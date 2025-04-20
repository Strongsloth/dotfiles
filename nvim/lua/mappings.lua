require "nvchad.mappings"

-- add yours here
local api = vim.api
local map = vim.keymap.set
local autocmd = vim.api.nvim_create_autocmd

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

autocmd("BufDelete", {
  callback = function()
    local bufs = vim.t.bufs
    if #bufs == 1 and api.nvim_buf_get_name(bufs[1]) == "" then
      vim.cmd "Nvdash"
    end
  end,
})

autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line "'\""
    if
      line > 1
      and line <= vim.fn.line "$"
      and vim.bo.filetype ~= "commit"
      and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
    then
      vim.cmd 'normal! g`"'
    end
  end,
})

map("n", "<C-A>", "ggVG", { desc = "Select all text." })
vim.schedule(function()
  vim.cmd ":ShowkeysToggle"
end)
