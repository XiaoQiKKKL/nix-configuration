{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # 社交与通讯
    telegram-desktop
    qq

    # 效率与终端
    kitty
    localsend
    kdePackages.ark
    v2rayn
    google-chrome
    gimp-with-plugins
    krita

    # 游戏与运行环境
    hmcl
    osu-lazer-bin
    protontricks
  ];
}
