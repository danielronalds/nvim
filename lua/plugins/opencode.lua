return {
    "NickvanDyke/opencode.nvim",
    lazy = true,
    config = function()
        vim.g.opencode_opts = {
            auto_reload = true,
            provider = {
                tmux = {
                    options = "-h",
                }
            }
        }
    end,
    keys = {
        { "<leader>oa", function() require("opencode").ask("@this: ", { submit = true }) end,  mode = { "n", "x" }, desc = "Ask about this" },
        { "<leader>o+", function() require("opencode").prompt("@this") end,                    mode = { "n", "x" }, desc = "Add this" },
        { "<leader>os", function() require("opencode").select() end,                           mode = { "n", "x" }, desc = "Select prompt" },
        { "<leader>ot", function() require("opencode").toggle() end,                           desc = "Toggle embedded" },
        { "<leader>oc", function() require("opencode").command() end,                          desc = "Select command" },
        { "<leader>on", function() require("opencode").command("session_new") end,             desc = "New session" },
        { "<leader>oi", function() require("opencode").command("session_interrupt") end,       desc = "Interrupt session" },
        { "<leader>oA", function() require("opencode").command("agent_cycle") end,             desc = "Cycle selected agent" },
        { "<S-C-u>",    function() require("opencode").command("messages_half_page_up") end,   desc = "Messages half page up" },
        { "<S-C-d>",    function() require("opencode").command("messages_half_page_down") end, desc = "Messages half page down" },
    }
}
