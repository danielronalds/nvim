vim.keymap.set("n", "<leader>yf", ":let @+ = expand('%')<cr>", { desc = "Copy current buffer filepath" })

return {
  "samir-roy/code-bridge.nvim",
  config = function()
    local process_names = { "claude", "opencode" }

    local claude_version = vim.fn.system("claude -v 2>/dev/null"):match("^[%d%.]+") or ""
    if vim.v.shell_error == 0 and claude_version ~= "" then
      table.insert(process_names, claude_version)
    end

    require("code-bridge").setup({
      tmux = {
        target_mode = "current_window",
        process_name = process_names,
        find_node_process = true,
      },
    })
  end,
  keys = {
    { "<leader>a", nil, desc = "AI/Claude Code" },
    { "<leader>ac", "<cmd>CodeBridgeTmux<cr>", desc = "Send file to Claude" },
    { "<leader>ac", "<cmd>CodeBridgeTmux<cr>", mode = "v", desc = "Send selection to Claude" },
    { "<leader>aa", "<cmd>CodeBridgeTmuxAll<cr>", desc = "Send all buffers to Claude" },
    { "<leader>ai", "<cmd>CodeBridgeTmuxInteractive<cr>", desc = "Interactive send to Claude" },
    { "<leader>ad", "<cmd>CodeBridgeTmuxDiff<cr>", desc = "Send diff to Claude" },
    { "<leader>aD", "<cmd>CodeBridgeTmuxDiffStaged<cr>", desc = "Send staged diff to Claude" },
    { "<leader>ae", "<cmd>CodeBridgeTmuxDiagnostics<cr>", desc = "Send diagnostics to Claude" },
    { "<leader>ar", "<cmd>CodeBridgeTmuxRecent<cr>", desc = "Send recent files to Claude" },
  },
}
