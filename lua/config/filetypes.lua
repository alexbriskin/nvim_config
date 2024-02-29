local filetype_autocmd_group = vim.api.nvim_create_augroup('filetype_options', { clear = true })

-- Attach autocmds for each relevant filetype
vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
    group = "filetype_options",
    pattern = "*",
    callback = function()
    local filetype = vim.bo.filetype

    if filetype == 'python' then
        vim.bo.tabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.softtabstop = 4
    elseif filetype == 'c' or filetype == 'cpp' then
        vim.bo.tabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.softtabstop = 4
        vim.bo.expandtab = true
    else
        vim.bo.tabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.softtabstop = 4
    end
end
,
})
