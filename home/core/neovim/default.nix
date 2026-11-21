{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    extraPackages = with pkgs; [
      nodejs
      nixd
      jq
      prettier
      nixfmt
      fsautocomplete
      statix
      ruff
    ];
  };
  xdg.configFile."nvim" = {
    source = ./config;
    # recursive = true;
  };
}
