{ inputs, pkgs, ... }:
{
  services.xserver.enable = true;
  imports = [
    inputs.niri.nixosModules.niri
  ];
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    wl-clipboard
    wayland-utils
    cage
    gamescope
  ];
  programs.niri = {
    enable = true;
    package = inputs.niri.packages.${pkgs.stdenv.hostPlatform.system}.niri-unstable;
  };
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
}
