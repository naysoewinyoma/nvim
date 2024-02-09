-- Customize statusline
vim.opt.laststatus = 3

local function git_branch()
    local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
    if string.len(branch) > 0 then
        return " " .. branch
    else
        return nil  -- return nil when the branch is empty
    end
end

local function statusline()
    local set_color_1 = "%#PmenuSel#"
    local branch = git_branch()
    local set_color_2 = "%#LineNr#"
    local file_name = " %t "
    local align_right = "%="
    local file_type = " %{&filetype}"
    local fileencoding = " %{&fileencoding?&fileencoding:&encoding}"
    local linecol = " [%l:%c] "

    local status_line_format = "%s%s%s%s%s%s%s%s"

    return string.format(
        status_line_format,
        set_color_1,
        branch and " " .. branch .. " " or "",
        branch and set_color_2 or "",
        file_name,
        align_right,
        file_type,
        fileencoding,
        branch and linecol or ""
    )
end

vim.opt.statusline = statusline()
