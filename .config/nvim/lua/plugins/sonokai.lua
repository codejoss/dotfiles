
return {
  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    init = function()
      -- Tus configuraciones del colorscheme
      vim.g.sonokai_enable_italic = 1
      vim.g.sonokai_spell_foreground = "colored"
      vim.g.sonokai_diagnostic_virtual_text = "highlighted"
      vim.g.sonokai_current_word = "underline"

      -- AUTOCOMANDO: Escucha cuando se activa Sonokai y le clava tus colores de resaltado encima
      vim.api.nvim_create_autocmd("ColorScheme", {
        group = vim.api.nvim_create_augroup("custom_highlights_sonokai", {}),
        pattern = "sonokai",
        callback = function()
          -- Tus configuraciones manuales de edición (Ahora persistentes)
          -- vim.api.nvim_set_hl(0, "Visual", { bg = "#4a5a7a" })
          vim.api.nvim_set_hl(0, "Visual", { bg = "#00344A" })
          vim.api.nvim_set_hl(0, "CursorLine", { bg = "#23252B" })

          -- Quita los parches/fondos grises de las ventanas flotantes y alertas de Snacks
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE", ctermbg = "NONE" })
          vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", ctermbg = "NONE" })
          vim.api.nvim_set_hl(0, "SnacksNotifierNormal", { bg = "NONE", ctermbg = "NONE" })
          vim.api.nvim_set_hl(0, "SnacksNotifierBorder", { bg = "NONE", ctermbg = "NONE" })
          vim.api.nvim_set_hl(0, "SnacksNotifierBg", { bg = "NONE", ctermbg = "NONE" })
        end,
      })
    end,
  },

  -- Configura Sonokai como el esquema de colores predeterminado en LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sonokai",
    },
  },
}

