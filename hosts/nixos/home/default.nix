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
    ../../../home/obs
    ../../../home/yazi
    ../../../home/zen
    ../../../home/neovim
    ../../../home/noctalia
    ../../../home/git
    ../../../home/fish
    ../../../home/niri
    ../../../home/wechat
    ../../../home/k3s
    ../../../home/fcitx5
    ./desktop.nix
    ./tools.nix
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
