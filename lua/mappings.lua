require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Disabled arrow key movements for avoiding bad habbit
local opts = { noremap = true, silent = true }

map("n", "<Up>", "<Nop>", opts)
map("n", "<Down>", "<Nop>", opts)
map("n", "<Left>", "<Nop>", opts)
map("n", "<Right>", "<Nop>", opts)

map("i", "<Up>", "<Nop>", opts)
map("i", "<Down>", "<Nop>", opts)
map("i", "<Left>", "<Nop>", opts)
map("i", "<Right>", "<Nop>", opts)

map("v", "<Up>", "<Nop>", opts)
map("v", "<Down>", "<Nop>", opts)
map("v", "<Left>", "<Nop>", opts)
map("v", "<Right>", "<Nop>", opts)
--

-- Twilight toggle mappigs 
map("n", "<leader>tw", "<cmd>Twilight<CR>", { desc = "Toggle Twilight" })

-- FZF Lua mappings 
-- map("n", "<leader>fa")


local telescope = require("telescope.builtin")
map("n", "<leader>g", telescope.diagnostics, { desc = "LSP Diagnostics" })

-- Close any opened window with <Esc> button
map("n", "<Esc>", function()
  for _, win in pairs(vim.api.nvim_list_wins()) do
    local config = vim.api.nvim_win_get_config(win)
    if config.relative ~= "" then
      vim.api.nvim_win_close(win, true)
      return
    end
  end
end, { silent = true })

