return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        settings = {
            save_on_toggle = true,
            sync_on_ui_close = true,
        },
    },
    config = function(_, opts)
        require("harpoon"):setup(opts)
    end,
    keys = {
        { "<leader>a", function()
            require("harpoon"):list():add()
            Snacks.notify.info("Added file to harpoon", { title = "Harpoon" })
        end, desc = "Add file to harpoon" },
        { "<leader>m", function() local harpoon = require("harpoon"); harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "Open harpoon" },
        { "<leader>1", function() require("harpoon"):list():select(1) end, desc = "Open harpoon file 1" },
        { "<leader>2", function() require("harpoon"):list():select(2) end, desc = "Open harpoon file 2" },
        { "<leader>3", function() require("harpoon"):list():select(3) end, desc = "Open harpoon file 3" },
        { "<leader>4", function() require("harpoon"):list():select(4) end, desc = "Open harpoon file 4" },
        { "<leader>5", function() require("harpoon"):list():select(5) end, desc = "Open harpoon file 5" },
    },
}
