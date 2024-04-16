return {
    "ionide/ionide-vim",
    enabled = true,
    ft = {"fs", "fsx", "fsi"},
    config = function(_, opts)
        vim.cmd([[
          let g:fsharp#backend = 'nvim'
          let g:fsharp#fsautocomplete_command =
          \ [ 'dotnet',
          \   'fsautocomplete',
          \   '--background-service-enabled'
          \ ]
          augroup FSharp_AutoRefreshCodeLens
              autocmd!
              autocmd CursorHold,InsertLeave <buffer> lua vim.lsp.codelens.refresh()
          augroup END
        ]])

        local ionide = require("ionide")

        ionide.setup(opts)
    end,
}
