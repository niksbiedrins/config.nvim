return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      vim.env.CC = "clang"
      require("nvim-treesitter.install").compilers = { "clang" }

      require("nvim-treesitter.configs").setup({
        auto_install = true,
        sync_install = true,
        ensure_installed = { "c", "lua", "python", "latex", "vim" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
