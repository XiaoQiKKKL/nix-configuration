{
  config,
  pkgs,
  ...
}:
{
  services.caddy = {
    enable = true;
    configFile = config.sops.secrets.Caddyfile.path;
  };
  systemd.services.caddy.serviceConfig.SupplementaryGroups = [ "keys" ];
  sops.secrets.Caddyfile = {
    sopsFile = ./Caddyfile;
    format = "binary";
    key = "";
    owner = "caddy";
    group = "caddy";
    mode = "0600";
  };
}
