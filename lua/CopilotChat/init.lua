local utils = require('CopilotChat.utils')

local M = {}

-- Set up the plugin
M.setup = function()
  -- Add new command to explain the selected text with CopilotChat
  utils.create_cmd('CChatExplain', function(opts)
    vim.cmd('CChat Explain how it works')
  end, { nargs = '*', range = true })

  -- Add new command to generate unit tests with CopilotChat for selected text
  utils.create_cmd('CChatTests', function(opts)
    local cmd = 'CChat Briefly explain how it works then generate unit tests for the code.'
    -- Append the provided arguments to the command if any
    if opts.args then
      cmd = cmd .. ' ' .. opts.args
    end
    vim.cmd(cmd)
  end, { nargs = '*', range = true })
end

return M