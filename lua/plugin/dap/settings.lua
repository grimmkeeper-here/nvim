local dap = require('dap')

-- Toggle breakpoint
vim.keymap.set('n', '<F9>', function() dap.toggle_breakpoint() end)
-- Set conditional breakpoint
vim.keymap.set('n', '<Leader>B', function() 
    dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) 
end)
-- Set log point
vim.keymap.set('n', '<Leader>lp', function() 
    dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) 
end)

-- Debugging control
vim.keymap.set('n', '<F5>', function() dap.continue() end)
vim.keymap.set('n', '<F10>', function() dap.step_over() end)
vim.keymap.set('n', '<F11>', function() dap.step_into() end)
vim.keymap.set('n', '<F12>', function() dap.step_out() end)
