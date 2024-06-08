function _G.send_escape()
	local keys = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
	vim.api.nvim_feedkeys(keys, "m", false)
end

function _G.DeleteNamelessBuffers()
  local buffers = vim.api.nvim_list_bufs()
  for _, buf in ipairs(buffers) do
    if vim.api.nvim_buf_get_name(buf) == '' and vim.api.nvim_buf_is_loaded(buf) then
      vim.api.nvim_buf_delete(buf, {force = true})
    end
  end
end

-- vim.api.nvim_command('command! DeleteNamelessBuffers lua DeleteNamelessBuffers()')
