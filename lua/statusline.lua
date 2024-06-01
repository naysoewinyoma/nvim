-- Customize statusline
local function statusline()
	local function git_branch()
		local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
		return string.len(branch) > 0 and branch or nil
	end

	local branch = git_branch()
	local set_color = "%#LineNr#"
	local file_name = "%t " .. "%m"
	local align_right = "%="
	local file_type = " %{&filetype}"
	local fileencoding = " %{&fileencoding?&fileencoding:&encoding}"
	local linecol = " [%l:%c]"

	local status_line_format = "%s%s%s%s%s%s%s"

	return string.format(
		status_line_format,
		set_color,
		branch and " " .. branch .. " > " or "",
		file_name,
		align_right,
		file_type,
		fileencoding,
		linecol
	)
end

vim.opt.laststatus = 3
vim.opt.statusline = statusline()
