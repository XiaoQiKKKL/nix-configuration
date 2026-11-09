{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

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
  # xdg.configFile."nvim" = {
  #   source = ./config;
  #   recursive = true;
  # };
}
