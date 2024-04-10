return {

  -- typescript-tools requires tsserver to be installed somewhere. Using Mason to handle this install wasn't working because both tsserver and typescript-tools would
  -- attach to the buffer, leading to errors with type resolution, etc. One option is to install typescript language service globally, however I think a better way is to
  -- make sure that typescript is defined in any projects (via package.json) and that npm install has been run. Unless asdf is also an option for managing versions?

  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {},
}
