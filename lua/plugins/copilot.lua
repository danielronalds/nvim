return {
    {
        "github/copilot.vim",
        lazy = true,
        ft = { "typescript" }
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "github/copilot.vim" },                 -- or zbirenbaum/copilot.lua
            { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
        },
        ft = { "typescript" },
        build = "make tiktoken", -- Only on MacOS or Linux
        opts = {
            agent = "copilot",
        },
        -- See Commands section for default commands if you want to lazy load on them
    },
}
