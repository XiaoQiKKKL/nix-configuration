{ pkgs, ... }:
{
  programs.niri.enable = true;

  environment.systemPackages = with pkgs; [
    xwayland-satellite
    wl-clipboard
    wayland-utils
    cage
    gamescope
  ];
  environment.variables.NIXOS_OZONE_WL = "1";
  xdg.portal = {
    extraPortals = [ pkgs.xdg-desktop-portal-gnome ];
    config.niri = {
      default = [
        "gnome"
        "gtk"
      ];
      "org.freedesktop.impl.portal.ScreenCast" = [ "gnome" ];
      "org.freedesktop.impl.portal.Screenshot" = [ "gnome" ];
    };
  };

  services.xserver.enable = true;
}
