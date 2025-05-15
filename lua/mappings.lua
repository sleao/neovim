require "nvchad.mappings"

local map = vim.keymap.set

map("n", "<leader>di", '<cmd> lua vim.diagnostic.open_float(0, {scope="line"})<CR>')
--
-- centers page on up/down
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-j>", "10jzz")
map("n", "<C-k>", "10kzz")

map("v", ">", ">gv", { desc = "indent" })

-- Gopher specific mappings
map("n", "<leader>gsj", "<cmd> GoTagAdd json <CR>", { desc = "Add json struct tags" })
map("n", "<leader>gsy", "<cmd> GoTagAdd yaml <CR>", { desc = "Add YAML struct tags" })

-- new terminals
map("n", "<leader>h", function()
  require("nvchad.term").new { pos = "sp", cmd = "neofetch" }
end, { desc = "terminal new horizontal term" })

map("n", "<leader>v", function()
  require("nvchad.term").new { pos = "vsp", cmd = "neofetch" }
end, { desc = "terminal new vertical term" })

-- toggleable
map({ "n", "t" }, "<A-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "terminal toggleable vertical term" })

map({ "n", "t" }, "<A-h>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })
