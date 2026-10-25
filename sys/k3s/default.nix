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
      family = "inet";
      content = ''
        chain bypass_kube_firewall {
          type filter hook input priority filter - 5; policy accept;
          meta nfproto ipv4 ip daddr 127.0.0.0/8 ct status dnat ct original ip daddr != 127.0.0.0/8 accept
          meta nfproto ipv6 ip6 daddr ::1 ct status dnat ct original ip6 daddr != ::1 accept
        }
      '';
    };
  };
}
