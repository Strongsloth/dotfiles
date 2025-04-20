---@type NvPluginSpec

return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      { "theHamsta/nvim-dap-virtual-text" },
      { "rcarriga/nvim-dap-ui" },
    },
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      require("nvim-dap-virtual-text").setup {}

      require("dapui").setup()
      require("nvim-dap-virtual-text").setup {}

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      -- Mappings
      vim.keymap.set("n", "<F5>", function()
        require("dap").continue()
      end)
      vim.keymap.set("n", "<Leader>db", function()
        require("dap").toggle_breakpoint()
      end)

      -- Adapter configurations

      -------------------------------C/C++/Rust
      dap.adapters.lldb = {
        type = "executable",
        command = "C:/Program Files/LLVM/bin", -- adjust as needed, must be absolute path
        name = "lldb",
      }
      dap.configurations.cpp = {
        {
          name = "Launch",
          type = "lldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
          args = {},
        },
      }
      dap.configurations.c = dap.configurations.cpp
      dap.configurations.rust = dap.configurations.cpp
    end,
  },
}
