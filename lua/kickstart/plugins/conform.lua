return {
  { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre', 'BufNewFile' },
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = false, lsp_fallback = true, timeout_ms = 1000 }
        end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },

    opts = {
      format_on_save = { timeout_ms = 1000, lsp_fallback = true, async = false },

      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { { 'prettierd', 'prettier' } },
        typescript = { { 'prettierd', 'prettier' } },
        javascriptreact = { { 'prettierd', 'prettier' } },
        typescriptreact = { { 'prettierd', 'prettier' } },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use a sub-list to tell conform to run *until* a formatter
        -- is found.
        -- javascript = { { "prettierd", "prettier" } },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
