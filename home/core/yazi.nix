{ pkgs, ... }:
{
  programs.yazi = {
    enable = true;
  };

  xdg = {
    mimeApps.defaultApplications = {
      "inode/directory" = "yazi.desktop";
    };
    portal = {
      extraPortals = [
        pkgs.xdg-desktop-portal-termfilechooser
      ];
      config = {
        common = {
          "org.freedesktop.impl.portal.FileChooser" = "termfilechooser";
        };
      };
    };
    configFile."xdg-desktop-portal-termfilechooser/config".text = ''
      [cmd]
      default=${pkgs.kitty}/bin/kitty -e ${pkgs.fish} -i -c "${pkgs.yazi}/bin/yazi --chooser-file=%f"
    '';
  };
}
