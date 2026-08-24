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
  stylix.targets.neovim.enable = false;
  xdg.configFile."nvim" = {
    source = ./config;
    recursive = true;
  };
}
