{ pkgs, ... }:
{
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_17;
    enableTCPIP = true;

    settings = {
      listen_addresses = "*";
      shared_buffers = "256MB";
      max_connections = 100;
    };
  };
}
