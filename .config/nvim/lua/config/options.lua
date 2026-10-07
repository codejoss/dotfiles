-- Options are automatically loaded before lazy.nvim startup.
require("config.remote_clipboard").setup()

vim.opt.relativenumber = false
vim.g.autoformat = false

vim.opt.wrap = true          -- Activa el salto de línea visual
vim.opt.breakindent = true  -- Hace que la línea cortada mantenga la sangría
vim.opt.linebreak = true    -- Evita cortar palabras a la mitad
vim.opt.showbreak = "↳ "    -- Muestra un simbolo al inicio de las palabras wrapeadas
