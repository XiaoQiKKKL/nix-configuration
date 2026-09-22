{
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    inputs.noctalia.homeModules.default
  ];
  programs.noctalia.enable = true;
  home.packages = with pkgs; [
    nwg-look
    kdePackages.qt6ct
    libsForQt5.qt5ct

    wl-clipboard
  ];
}
