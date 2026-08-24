-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
local nvim_lsp = vim.lsp
nvim_lsp.config("nixd", {
  cmd = { "nixd" },
  filetypes = { "nix" },
  root_markers = { "flake.nix", ".git" },
  settings = {
    nixd = {
      nixpkgs = {
        expr = "import <nixpkgs> { }",
      },
      formatting = {
        command = { "nixfmt" },
      },
      options = {
        nixos = {
          expr = "(builtins.getFlake (toString ./.)).nixosConfigurations.<hostname>.options",
        },
        home_manager = {
          expr = "(builtins.getFlake (toString ./.)).nixosConfigurations.<name>.options.home-manager.users.type.getSubOptions []",
        },
      },
    },
  },
})
nvim_lsp.enable("nixd")
