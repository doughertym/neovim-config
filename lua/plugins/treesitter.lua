
return { "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "lua", "java", "javascript", "c_sharp", "json",
        "php", "markdown", "text"
      },
      ensure_installed = {},
      highlight = { enabled = true },
      indent = { enabled = true }
    })
  end
}
