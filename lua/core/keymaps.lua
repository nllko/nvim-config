-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)

-- save file without auto-formatting
vim.keymap.set(
	"n",
	"<leader>sn",
	"<cmd>noautocmd w <CR>",
	{ noremap = true, silent = true, desc = "Save without auto-formatting" }
)

-- quit file
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x', opts)

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Resize with arrows
vim.keymap.set("n", "<S-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<S-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<S-Left>", ":vertical resize +2<CR>", opts)
vim.keymap.set("n", "<S-Right>", ":vertical resize -2<CR>", opts)

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", { noremap = true, silent = true, desc = "[X]lose buffer" }) -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", { noremap = true, silent = true, desc = "Open new [B]uffer" }) -- new buffer

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", { noremap = true, silent = true, desc = "Split [V]ertically" }) -- split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", { noremap = true, silent = true, desc = "Split [H]orizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { noremap = true, silent = true, desc = "Resize [S]plits [E]qually" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>xs", ":close<CR>", { noremap = true, silent = true, desc = "[X]lose current [S]plit" }) -- close current split window

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

-- Navigate between splits with arrows
vim.keymap.set("n", "<C-Up>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":wincmd l<CR>", opts)

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", { noremap = true, silent = true, desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { noremap = true, silent = true, desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", { noremap = true, silent = true, desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", { noremap = true, silent = true, desc = "Go to previous tab" }) --  go to previous tab

-- Toggle line wrapping
vim.keymap.set(
	"n",
	"<leader>lw",
	"<cmd>set wrap!<CR>",
	{ noremap = true, silent = true, desc = "Toggle [L]ine [W]rapping" }
)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', opts)

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
