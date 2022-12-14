require('zen-mode').setup {
  window = { backdrop = 0.95, width = 100 },
  plugins = {
    options = { enabled = true, ruler = false, showcmd = false },
    twilight = { enabled = true },
    gitsigns = { enabled = false },
    tmux = { enabled = false }
  }
}
