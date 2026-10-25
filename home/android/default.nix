{ pkgs, ... }:
{
  home.packages = with pkgs; [
    android-tools
    apktool
    apksigner
  ];
}
