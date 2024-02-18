-- Customize statusline
vim.opt.laststatus = 3

local function statusline()
    local function git_branch()
        local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
        return string.len(branch) > 0 and " " .. branch or nil
    end

    local branch = git_branch()
    local color_1 = branch and "%#LineNr#" or "%#PmenuSel#"

    local set_color_1 =  "%#PmenuSel#"
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
        set_color_2,
        file_name,
        align_right,
        file_type,
        fileencoding,
        branch and linecol or " "
    )
end

vim.opt.statusline = statusline()
