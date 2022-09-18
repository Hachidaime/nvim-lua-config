local wk = require('which-key')

local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
  local float = Terminal:new({ direction = "float" })
  return float:toggle()
end

local mappings = {
  e = { ":NvimTreeToggle<CR>", "Open or Close the tree" },
  b = { ":NvimTreeFocus<CR>", "Focus on the tree" },
  w = { ":w<CR>", "Save" },
  q = { ":q<CR>", "Quit" },
  x = { ":bd<CR>", "Close Buffer" },
  -- r = { ":Reload<CR>", "Reload file" },
  r = { ":luafile %<CR>", "Reload file" },
  R = { ":Restart<CR>", "Restart file" },
  f = {
    name = "Telescope",
    f = { ":Telescope find_files<CR>", "Find Files" },
    g = { ":Telescope live_grep<CR>", "Live Grep" },
    b = { ":Telescope buffers<CR>", "Find Buffers" },
    h = { ":Telescope help_tags<CR>", "Help Tags" },
    r = { ":Telescope oldfiles<CR>", "Recent Files" },
  },
  h = { "Move Window Left" },
  j = { "Move Window Down" },
  k = { "Move Window Up" },
  l = { "Move Window Right" },
  c = { "Comment" },
  cl = { "Comment Line" },
  t = {
    t = { ":ToggleTerm<cr>", "Split Below" },
    b = { ":ToggleTerm direction=tab<cr>", "Open in New Tab" },
    f = { toggle_float, "Floating Terminal" },
  },
  o = {':set paste<CR>m`o<Esc>``:set nopaste<CR>j', "Insert New Line Below"},
  O = {':set paste<CR>m`O<Esc>``:set nopaste<CR>k', "Insert New Line Above"},
  p = {
    name = "Packer",
    r = { ":PackerClean<cr>", "Remove Unused Plugins" },
    c = { ":PackerCompile profile=true<cr>", "Recompile Plugins" },
    i = { ":PackerInstall<cr>", "Install Plugins" },
    p = { ":PackerProfile<cr>", "Packer Profile" },
    s = { ":PackerSync<cr>", "Sync Plugins" },
    S = { ":PackerStatus<cr>", "Packer Status" },
    u = { ":PackerUpdate<cr>", "Update Plugins" }
  }
}
local opts = { prefix = '<leader>' }

wk.register(mappings, opts)

