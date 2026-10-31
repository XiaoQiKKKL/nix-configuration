{ pkgs, ... }:
{
  services.k3s = {
    enable = true;
    role = "server";
    manifests = {
      traefik-config.source = ./traefik-config.yaml;
    };
  };
  environment.systemPackages = [ pkgs.k3s ];
}
