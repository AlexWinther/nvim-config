return {
  'ggandor/leap.nvim',
  config = function()
    local leap = require 'leap'

    -- Set default mappings (s, S, gs)
    leap.create_default_mappings()

    leap.opts.equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' }
  end,
}
