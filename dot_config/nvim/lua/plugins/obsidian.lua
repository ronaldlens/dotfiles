return {
  "epwalsh/obsidian.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    --"hrsh7th/nvim-cmp",
  },
  config = function()
    require("obsidian").setup({
      dir = "~/Obsidian/Personal", -- no need to call 'vim.fn.expand' here
      completion = {
        nvim_cmp = false, -- if using nvim-cmp, otherwise set to false
      },
      note_id_func = function(title)
        -- Create note IDs in the format 'YYYYMMDDHHMMSS'
        return os.date("%Y%m%d%H%M%S")
      end,
    })
  end,
}
