local conform = require('conform')

conform.setup({
    formatters_by_ft = {
        lua = { 'stylua' },
        java = { 'google-java-format' },
        python = { 'isort', 'black' },
        c = { 'clang_format' },
    },

    format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
    },
})
