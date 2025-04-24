require "nvchad.mappings"

-- add yours here
local api = vim.api
local map = vim.keymap.set
local autocmd = vim.api.nvim_create_autocmd

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "v" }, "dc", "ggVGd", { desc = "Delete Content" })
map("n", "<C-A>", "ggVG", { desc = "Select all text." })
map("n", "<Leader>ec", function()
  vim.cmd "tabnew"
  local conf = vim.fn.stdpath "config"
  vim.cmd("tcd " .. conf .. " | e init.lua")
end, { desc = "edit config" })
map("n", "<Leader>ca", function()
  vim.lsp.buf.code_action()
end, { desc = "Open Code Actions" })

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

autocmd("User", {
  pattern = "MarkviewAttach",
  callback = function(event)
    --- This will have all the data you need.
    local data = event.data

    vim.print(data)
  end,
})

vim.schedule(function()
  vim.cmd ":ShowkeysToggle"
end)
