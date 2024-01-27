-- Customize statusline
vim.opt.laststatus = 3

local function git_branch()
    local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
    if string.len(branch) > 0 then
        return string.format(" %s ", branch)
    else
        return ":"
    end
end

local function statusline()
    local set_color_1 = "%#PmenuSel#"
    local branch = git_branch()
    local set_color_2 = "%#LineNr#"
    local file_name = " %t"
    local align_right = "%="
    local file_type = " %{&filetype}"
    local fileencoding = " %{&fileencoding?&fileencoding:&encoding}"
    local linecol = " %l:%c "

    return string.format(
        "%s %s %s%s%s%s%s%s",
        set_color_1,
        branch,
        set_color_2,
        file_name,
        align_right,
        file_type,
        fileencoding,
        linecol
    )
end

vim.opt.statusline = statusline()
