return {
  "selimacerbas/live-server.nvim",
  cmd = { "LiveServerStart", "LiveServerStop" },
  opts = {}, -- Carga la configuración nativa sin dependencias npm
  keys = {
    { "<leader>ls", "<cmd>LiveServerStart<cr>", desc = "Iniciar Live Server" },
    { "<leader>lx", "<cmd>LiveServerStop<cr>", desc = "Detener Live Server" },
  },
}
