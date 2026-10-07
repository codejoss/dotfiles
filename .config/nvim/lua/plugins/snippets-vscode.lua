
return {
  -- Configurar LuaSnip para cargar snippets estilo VS Code
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      -- Carga los snippets de friendly-snippets (HTML, CSS, JS, etc.)
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}
