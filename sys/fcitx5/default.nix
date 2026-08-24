{ pkgs, ... }:
{
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
    fcitx5.waylandFrontend = true;
    fcitx5.addons = with pkgs; [
      (fcitx5-rime.override {
        rimeDataPkgs = [
          rime-data
          rime-ice
        ];
      })
      fcitx5-gtk
      qt6Packages.fcitx5-configtool
      kdePackages.fcitx5-qt
      fcitx5-nord
    ];
  };
  environment.systemPackages = with pkgs; [
    gnomeExtensions.kimpanel
  ];
}
