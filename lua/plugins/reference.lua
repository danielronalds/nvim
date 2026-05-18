return {
    "danielronalds/reference.nvim",
    config = function()
      local process_names = { "claude", "opencode" }

      local claude_version = vim.fn.system("claude -v 2>/dev/null"):match("^[%d%.]+") or ""
      if vim.v.shell_error == 0 and claude_version ~= "" then
        table.insert(process_names, claude_version)
      end

      require("reference").setup({
        tmux = {
          process_names = process_names,
        },
      })
    end,
    keys = {
      { "<leader>cc", "<cmd>ReferenceSend<cr>", desc = "Send file reference to AI agent" },
      { "<leader>cc", ":'<,'>ReferenceSend<cr>", mode = "v", desc = "Send selection reference to AI agent" },
    },
  }
