return {
    "xiyaowong/transparent.nvim",
    lazy = false,
    priority = 999,
    config = function()
        vim.cmd([[TransparentEnable]])
    end
}

