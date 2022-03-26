vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
  function()

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

    use {
      "nvim-treesitter/nvim-treesitter-textobjects"
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
      "folke/which-key.nvim",
      config = function() require("plug/config/whichkey") end,
      event = "BufWinEnter"
    }

    use {
      "kana/vim-submode",
      config = function() require("plug/config/submode") end
    }

    use {
      "cohama/lexima.vim"
    }

    use {
      "akinsho/toggleterm.nvim",
      config = function() require("plug/config/term") end
    }

  end,

  config = {
    display = {
      open_fn = require("packer.util").float
    }
  }
})
