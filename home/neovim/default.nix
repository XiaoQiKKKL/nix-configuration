{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;

    extraPackages = with pkgs; [
      nodejs
      jq
      prettier
      nixfmt
      nil
      fsautocomplete
      statix
      ruff
    ];
  };
  xdg.configFile."nvim" = {
    source = ./config;
    recursive = true;
  };
}
