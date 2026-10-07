-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com
-- Add any additional keymaps here

-- 1. Redirigir d, c y x al registro "d de forma correcta sin romper los movimientos (como dag)
vim.keymap.set({ "n", "v" }, "d", '"dd', { remap = false, desc = "Borrar al registro d" })
vim.keymap.set({ "n", "v" }, "c", '"dc', { remap = false, desc = "Cambiar al registro d" })
vim.keymap.set({ "n", "v" }, "x", '"dx', { remap = false, desc = "Eliminar carácter al registro d" })

-- 2. Atajos rápidos para interactuar con la PC de forma cómoda
-- Pegar desde el portapapeles de la PC usando Ctrl + p
vim.keymap.set("n", "<C-p>", '"+p', { desc = "Pegar desde el portapapeles de la PC" })

-- Copiar hacia la PC usando Ctrl + y (seleccionando en modo visual)
vim.keymap.set("v", "<C-y>", '"+y', { desc = "Copiar al portapapeles de la PC" })

-- Renombrar simbolo
vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, { noremap = true, silent = true })

-- 3. Salir de modo inserto rápido
vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape con jk" })

vim.keymap.set({ "i", "s" }, "<C-l>", function()
  local ls = require("luasnip")
  if ls.choice_active() then ls.change_choice(1) end
end, { desc = "Snippet: siguiente opción" })
