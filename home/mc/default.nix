{ pkgs, ... }:
{
  home.packages = with pkgs; [
    zulu
    hmcl
  ];
}
