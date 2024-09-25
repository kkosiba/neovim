-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  require 'kickstart.plugins.ui.fs_explorer',
  require 'kickstart.plugins.ui.toggleterm',
  require 'kickstart.plugins.ui.which_key',
  require 'kickstart.plugins.ui.fuzzy_finder',

  -- LSP-related plugins
  require 'kickstart.plugins.lsp.lua.lazydev',
  require 'kickstart.plugins.lsp.lua.luvit_meta',
  require 'kickstart.plugins.lsp.main',
  require 'kickstart.plugins.lsp.autoformat',
  require 'kickstart.plugins.lsp.autocompletion',
  require 'kickstart.plugins.lsp.goto_preview',

  -- UI & theme
  require 'kickstart.plugins.ui.theme',
  require 'kickstart.plugins.ui.statusbar',
  require 'kickstart.plugins.ui.todo_comments',
  require 'kickstart.plugins.ui.mini',
  require 'kickstart.plugins.ui.treesitter',
  require 'kickstart.plugins.ui.command_launcher',
  require 'kickstart.plugins.ui.git',
  require 'kickstart.plugins.ui.lazygit',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
