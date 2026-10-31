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

    ../../../../home/wechat

    #../../../../home/k3s

    ./desktop.nix
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
