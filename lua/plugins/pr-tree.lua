return {
    name = "pr-tree",
    dir = vim.fn.stdpath("config"),
    dependencies = { "folke/snacks.nvim" },
    keys = {
        { "<leader>pr", function() require("danielr.pr_tree").open() end, desc = "PR File Tree" },
    },
    cmd = { "PrTree" },
    config = function()
        vim.api.nvim_create_user_command("PrTree", function(opts)
            local pr = opts.args ~= "" and opts.args or nil
            require("danielr.pr_tree").open(pr)
        end, { nargs = "?", desc = "Open Snacks tree of files changed in a PR" })
    end,
}
