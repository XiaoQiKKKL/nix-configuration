{
  lib,
  config,
  pkgs,
  ...
}:
{
  services.caddy = {
    enable = true;
    configFile = config.sops.secrets.Caddyfile.path;
    environmentFile = config.sops.templates."caddy-env".path;
    package = pkgs.caddy.withPlugins {
      plugins = [ "github.com/caddy-dns/cloudflare@v0.2.4" ];
      hash = "sha256-dQvk6ezY6TQ1J7PjhCXnThF/SqVgPwBO8/RXzHCY+js=";
    };
  };
  systemd.services.caddy.serviceConfig.SupplementaryGroups = [ "keys" ];
  sops = {
    secrets = {
      Caddyfile = {
        sopsFile = ./Caddyfile;
        format = "binary";
        key = "";
        owner = "caddy";
        group = "caddy";
        mode = "0600";
      };
      cloudflare_api_token = { };
    };
    templates."caddy-env" = {
      owner = "caddy";
      group = "caddy";
      content = lib.generators.toKeyValue { } {
        CLOUDFLARE_API_TOKEN = config.sops.placeholder.cloudflare_api_token;

        HTTPS_PROXY = "http://127.0.0.1:7890";
        HTTP_PROXY = "http://127.0.0.1:7890";

        NO_PROXY = "localhost,127.0.0.1,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16,100.64.0.0/10";
      };
    };
  };
}
