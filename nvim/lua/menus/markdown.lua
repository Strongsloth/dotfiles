return {
  {
    name = "Preview Markdown File",
    cmd = function()
      vim.cmd ":MarkdownPreview"
    end,
    rtxt = "MarkdownPreview",
  },
  {
    name = "Stop Markdown Preview",
    cmd = function()
      vim.cmd ":MarkdownPreviewStop"
    end,
    rtxt = "MarkdownPreviewStop",
  },
  { name = "separator" },
  {
    name = "Toggle Markdown Preview",
    cmd = function()
      vim.cmd ":MarkdownPreviewToggle"
    end,
    rtxt = "MarkdownPreviewToggle",
  },
}
