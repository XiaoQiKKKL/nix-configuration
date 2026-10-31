{
  home = {
    username = "xiaoqi";
    homeDirectory = "/home/xiaoqi";
    sessionVariables = {
      EDITOR = "nvim";
      TERMINAL = "kitty";
    };
  };

  imports = [
    ../../../../home/core
    ../../../../home/desktop

    ../../../../home/obs
    ../../../../home/wechat
    ../../../../home/noctalia
    ../../../../home/reaper
    ../../../../home/tailscale
    ../../../../home/rust
    ../../../../home/mc
    ../../../../home/android

    ./desktop.nix
    ./niri
  ];

  xdg.portal.enable = true;

  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      sansSerif = [ "Maple Mono NF CN" ];
      serif = [ "Maple Mono NF CN" ];
      monospace = [ "Maple Mono NF CN" ];
      emoji = [ "Maple Mono NF CN" ];
    };
  };

  home.stateVersion = "26.05";
}
