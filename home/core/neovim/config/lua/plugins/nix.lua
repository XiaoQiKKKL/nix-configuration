return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        nil_ls = { mason = false },
        nixd = {
          mason = false,
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
        },
      },
    },
  },
}
