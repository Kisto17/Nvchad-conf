local M = {}
function M.setup()
  require"autosave".setup {
    enabled = true,
    execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
    events = {"InsertLeave", "TextChanged"},
    conditions = {
      exists = true,
      filename_is_not = {},
      filetype_is_not = {},
      modifiable = true
    },
    write_all_buffers = true,
    on_off_commands = true,
    clean_command_line_interval = 3000,
    debounce_delay = 0
  }
end
return M
