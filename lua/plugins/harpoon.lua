
return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup({
            settings = {
                save_on_toggle = true,
                sync_on_ui_close = true,
            }
        })

        vim.keymap.set("n", "<leader>a", function()
            harpoon:list():add()
            vim.notify("Added file to harpoon")
        end, { desc = "Add file to harpoon" })
        vim.keymap.set("n", "<leader>m", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open harpoon" })

        for num = 1, 5 do
            vim.keymap.set("n", "<leader>" .. num, function() harpoon:list():select(num) end, { desc = "Open harpoon file " .. num })
        end
    end
}
