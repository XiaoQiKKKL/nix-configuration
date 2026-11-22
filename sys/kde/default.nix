{ pkgs, ... }:
{
  services = {
    desktopManager.plasma6.enable = true;
    displayManager = {
      autoLogin = {
        enable = true;
        user = "xiaoqi";
      };
      sddm = {
        enable = true;
        wayland.enable = true;
      };
    };
  };
  xdg.portal = {
    extraPortals = [ pkgs.kdePackages.xdg-desktop-portal-kde ];
    config.kde.default = [
      "kde"
      "gtk"
    ];
  };
}
