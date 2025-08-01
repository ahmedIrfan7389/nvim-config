return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    local comment = require("Comment")
    local ts_context_commenstring = require("ts_context_commenstring.integration.comment_nvim")

    comment.setup({
      pre_hook = ts_context_commenstring.create_pre_hook(),
    })
  end,
}
