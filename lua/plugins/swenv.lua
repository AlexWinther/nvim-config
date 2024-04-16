return {
  {
    "AckslD/swenv.nvim",
    opts = {
      post_set_venv = function()
        if next(vim.lsp.get_active_clients()) ~= nil and vim.bo.ft == "python" then
          vim.cmd("LspRestart")
        end
      end,
    },
    keys = {
      { "<leader>p", "<Cmd>lua require('swenv.api').pick_venv()<CR>", desc = "Pick a Python virtualenv" },
    },
  },
}
