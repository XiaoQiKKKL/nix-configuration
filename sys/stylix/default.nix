{
  inputs,
  pkgs,
  config,
  ...
}:
{
  imports = [
    inputs.stylix.nixosModules.stylix
  ];
  stylix = {
    enable = true;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
    image = ./wallpaper.jpg;
    polarity = "dark";
    fonts = {
      monospace = {
        package = pkgs.maple-mono.NF-CN-unhinted;
        name = "Maple Mono NF CN";
      };
      serif = config.stylix.fonts.monospace;
      sansSerif = config.stylix.fonts.monospace;
      emoji = config.stylix.fonts.monospace;
    };
  };
}
