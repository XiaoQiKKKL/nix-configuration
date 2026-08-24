{ config, ... }:
{
  services.sing-box = {
    enable = true;
  };
  boot.kernel.sysctl = {
    "net.ipv4.conf.all.rp_filter" = 0;
    "net.ipv4.conf.default.rp_filter" = 0;
  };
  sops = {
    secrets.sing-box = {
      sopsFile = ./config.json;
      format = "json";
      key = "";
    };
    templates."sing-box.json" = {
      content = "${config.sops.placeholder.sing-box}";
      path = "/etc/sing-box/config.json";
      owner = "sing-box";
      group = "sing-box";
      mode = "0600";
    };
  };
}
