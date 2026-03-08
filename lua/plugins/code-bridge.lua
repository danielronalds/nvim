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
    { "<leader>c", nil, desc = "AI/Claude Code" },
    { "<leader>cc", "<cmd>CodeBridgeTmux<cr>", desc = "Send file to Claude" },
    { "<leader>cc", ":'<,'>CodeBridgeTmux<cr>", mode = "v", desc = "Send selection to Claude" },
    { "<leader>ca", "<cmd>CodeBridgeTmuxAll<cr>", desc = "Send all buffers to Claude" },
    { "<leader>ci", "<cmd>CodeBridgeTmuxInteractive<cr>", desc = "Interactive send to Claude" },
    { "<leader>cd", "<cmd>CodeBridgeTmuxDiff<cr>", desc = "Send diff to Claude" },
    { "<leader>cD", "<cmd>CodeBridgeTmuxDiffStaged<cr>", desc = "Send staged diff to Claude" },
    { "<leader>ce", "<cmd>CodeBridgeTmuxDiagnostics<cr>", desc = "Send diagnostics to Claude" },
    { "<leader>cr", "<cmd>CodeBridgeTmuxRecent<cr>", desc = "Send recent files to Claude" },
  },
}
