--------------------
-- Colemak Remaps --

vim.api.nvim_set_keymap("", "s", "i", { noremap = true });
vim.api.nvim_set_keymap("", "j", "n", { noremap = true });
vim.api.nvim_set_keymap("", "k", "e", { noremap = true });

vim.api.nvim_set_keymap("", "e", "k", { noremap = true });
vim.api.nvim_set_keymap("", "n", "j", { noremap = true });
vim.api.nvim_set_keymap("", "i", "l", { noremap = true });
vim.api.nvim_set_keymap("", "N", "J", { noremap = true });
vim.api.nvim_set_keymap("", "J", "N", { noremap = true });

------------------
-- Other Remaps --

-- Swap scroll screen keys
vim.api.nvim_set_keymap("n", "<C-n>", "<C-y>", { });
vim.api.nvim_set_keymap("n", "<C-e>", "<C-e>", { });

-- Disable recording feature
vim.api.nvim_set_keymap("n", "q", "<noop>", {});
