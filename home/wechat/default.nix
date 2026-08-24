{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    (pkgs.symlinkJoin {
      name = "wechat-wrapped";
      paths = [ pkgs.wechat ];
      buildInputs = [ pkgs.makeWrapper ];
      postBuild = ''
        wrapProgram $out/bin/wechat \
          --set QT_IM_MODULE "fcitx" \
          --set GTK_IM_MODULE "fcitx" \
          --set XMODIFIERS "@im=fcitx"
      '';
    })
  ];
}
