local M = {}

M.setup = function()
	M.window = nil
end

M.cmd_open = function()
	local buf = vim.api.nvim_create_buf(false, true)

	local width = math.floor(vim.o.columns * 0.6) -- 60% of the window width
	local height = math.floor(vim.o.lines * 0.5) -- 50% of the window height
	local opts = {
		style = "minimal",
		relative = "editor", -- Position relative to the entire editor
		width = width,
		height = height,
		row = (vim.o.lines - height) / 2, -- Center the window vertically
		col = (vim.o.columns - width) / 2, -- Center the window horizontally
		border = "rounded", -- Add rounded borders to the window
	}

	if M.window == nil then
		M.window = vim.api.nvim_open_win(buf, true, opts)
		vim.cmd.term()
		vim.cmd("startinsert")
		vim.cmd("tnoremap <Esc> <C-\\><C-n>")
	else
		vim.api.nvim_win_close(M.window, true)
		M.window = nil
	end
end

M.cmd_close = function()
	if M.window == nil then
		print("cmd runner does not have an open window")
		return
	end

	vim.api.nvim_win_close(M.window, true)
	M.window = nil
end

return M
