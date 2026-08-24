{ pkgs, ... }:
{
  fonts = {
    fontconfig.enable = true;
    packages = with pkgs; [
      noto-fonts-cjk-sans
      wqy_zenhei
      maple-mono.NF-CN-unhinted
    ];
  };
}
