{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # 社交与通讯
    qq

    # 效率与终端
    kitty
    localsend
    kdePackages.ark
    gimp-with-plugins
    krita

    # 游戏与运行环境
    hmcl
    protontricks
  ];
}
