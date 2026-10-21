return {
  {
    "selimacerbas/kitehost.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      -- Registrar el prefijo Ctrl + ` para que Which-Key lo reconozca como un menú
      { "<C-`>", mode = { "n" }, desc = "+LiveServer" },

      -- Configurar los sub-atajos asignados a ese prefijo
      { "<C-`>s", "<cmd>KiteHost start<cr>", desc = "Iniciar Live Server (Elegir Archivo)" },
      { "<C-`>S", "<cmd>KiteHost stop<cr>", desc = "Detener Live Server" },
    },
  }
}
