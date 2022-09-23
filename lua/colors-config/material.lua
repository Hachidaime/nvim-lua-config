require('material').setup({
  contrast = {
    sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    line_numbers = true, -- Enable contrast background for line numbers
    sign_column = true, -- Enable contrast background for the sign column
    cursor_line = true, -- Enable darker background for the cursor line
    non_current_windows = true, -- Enable darker background for non-current windows
  },
  italics = {
    comments = true, -- Enable italic comments
    keywords = true, -- Enable italic keywords
    functions = true, -- Enable italic functions
  },
})

vim.g.material_style = "deep ocean"
vim.cmd 'colorscheme material'
