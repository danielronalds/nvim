local dap = require("dap")
local ui = require("dapui")

ui.setup()
require('nvim-dap-virtual-text').setup()
require('dap-go').setup()
require("dap-python").setup("python3")

dap.listeners.before.attach.dapui_config = function()
    ui.open()
end

dap.listeners.before.launch.dapui_config = function()
    ui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
    ui.close()
end

dap.listeners.before.event_exited.dapui_config = function()
    ui.close()
end