vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  -- package manager
  ------------------------------------
  use {
    "wbthomason/packer.nvim"
  }

  -- colorscheme
  ------------------------------------
  use {
    "sainnhe/gruvbox-material"
  }

  -- treesitter
  ------------------------------------
  use {
    "nvim-treesitter/nvim-treesitter",
    config = function() require("plug/config/treesitter") end
  }

  use {
    "nvim-treesitter/playground"
  }

  -- fuzzy finder
  ------------------------------------
  use {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function() require("plug/config/telescope") end
  }

  -- statusline
  ------------------------------------
  use {
    "glepnir/galaxyline.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = function() require("plug/config/statusline") end
  }

  -- for web development
  ------------------------------------
  use {
    "norcalli/nvim-colorizer.lua",
    config = function() require("plug/config/colorizer") end
  }

  use {
    "mattn/emmet-vim",
    opt = true,
    ft = {javascript, typescript, html, css}
  }

  -- for utility
  ------------------------------------
  use {
    "kana/vim-submode"
  }

  use {
    "cohama/lexima.vim"
  }

  use {
    "blackCauldron7/surround.nvim",
    config = function()
      require("surround").setup {mapping_style = "surround"}
    end
  }

  use {
    "akinsho/toggleterm.nvim",
    config = function() require("plug/config/term") end
  }

end)
