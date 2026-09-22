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

  networking.nftables = {
    enable = true;
    tables.k3s-singbox = {
      family = "ip";
      content = ''
        chain bypass_kube_firewall {
          type filter hook input priority filter - 5; policy accept;
          tcp dport 45977 accept
        }
      '';
    };
  };
}
