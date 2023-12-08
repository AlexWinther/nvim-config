local linting = require('lint')

linting.linters_by_ft = {
    lua = { 'luacheck' },
    c = { 'cpplint' },
    python = { 'pylint' },
}

vim.api.nvim_create_autocmd({ 'InsertLeave', 'BufWritePost' }, {
    callback = function()
        local lint_status, lint = pcall(require, 'lint')
        if lint_status then
            lint.try_lint()
        end
    end,
})
