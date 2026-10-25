{ config, ... }:
{
  networking.wireguard.interfaces.wg0 = {
    ips = [ "10.218.0.2/24" ];
    privateKeyFile = config.sops.secrets.home_server_wireguard_private_key.path;
    peers = [
      {
        publicKey = "pQJAF9TqwwCl9FObzY0ccMKQMpauMbGpkkmXD9DuohI=";
        allowedIPs = [ "10.218.0.1/32" ];
        endpoint = "118.178.141.24:51820";
        persistentKeepalive = 25;
      }
    ];
  };
  sops.secrets.home_server_wireguard_private_key = { };
}
