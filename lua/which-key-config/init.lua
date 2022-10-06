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
  Q = { ":Q<CR>", "Force Quit" },
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
    r = { ":Telescope oldfiles<CR>", "Recent Files" }
  },
  h = { "Move Window Left" },
  j = { "Move Window Down" },
  k = { "Move Window Up" },
  l = { "Move Window Right" },
  t = {
    t = { ":ToggleTerm<cr>", "Split Below" },
    b = { ":ToggleTerm direction=tab<cr>", "Open in New Tab" },
    f = { toggle_float, "Floating Terminal" }
  },
  o = { ':set paste<CR>m`o<Esc>``:set nopaste<CR>j', "Insert New Line Below" },
  O = { ':set paste<CR>m`O<Esc>``:set nopaste<CR>k', "Insert New Line Above" },
  p = {
    name = "Packer",
    r = { ":PackerClean<cr>", "Remove Unused Plugins" },
    c = { ":PackerCompile profile=true<cr>", "Recompile Plugins" },
    i = { ":PackerInstall<cr>", "Install Plugins" },
    p = { ":PackerProfile<cr>", "Packer Profile" },
    s = { ":PackerSync<cr>", "Sync Plugins" },
    S = { ":PackerStatus<cr>", "Packer Status" },
    u = { ":PackerUpdate<cr>", "Update Plugins" }
  },
  L = {
    name = "LSP",
    i = { ":LspInfo<cr>", "Connected Language Servers" },
    x = { ":LspInstallInfo<cr>", "Connected Language Servers" },
    k = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
    K = { "<cmd>Lspsaga hover_doc<cr>", "Hover Commands" },
    w = {
      '<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Add Workspace Folder"
    },
    W = {
      '<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>',
      "Remove Workspace Folder"
    },
    l = {
      '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>',
      "List Workspace Folders"
    },
    t = { '<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition" },
    d = { '<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition" },
    D = { '<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration" },
    r = { '<cmd>lua vim.lsp.buf.references()<cr>', "References" },
    R = { '<cmd>Lspsaga rename<cr>', "Rename" },
    a = { '<cmd>Lspsaga code_action<cr>', "Code Action" },
    e = { '<cmd>Lspsaga show_line_diagnostics<cr>', "Show Line Diagnostics" },
    n = { '<cmd>Lspsaga diagnostic_jump_next<cr>', "Go To Next Diagnostic" },
    N = { '<cmd>Lspsaga diagnostic_jump_prev<cr>', "Go To Previous Diagnostic" }
  },
  z = {
    name = "Zen Mode",
    z = { ":ZenMode<cr>", "Zen Mode" },
    t = { ":Twilight<cr>", "Twilight" }
  }
}
local opts = { prefix = '<leader>' }

wk.register(mappings, opts)
