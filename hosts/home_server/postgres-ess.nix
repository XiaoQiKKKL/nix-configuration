{ pkgs, ... }:
{
  services.postgresql = {
    authentication = pkgs.lib.mkOverride 10 ''
      # TYPE  DATABASE        USER            ADDRESS                 METHOD
      local   all             all                                     trust
      host    all             all             127.0.0.1/32            scram-sha-256
      host    all             all             ::1/128                 scram-sha-256
      # 允许 K3s Pod 虚拟网段 (10.42.0.0/16) 访问
      host    all             all             10.42.0.0/16            scram-sha-256
      host    all             all             10.0.0.0/8              scram-sha-256
      # 允许宿主机局域网访问
      host    all             all             192.168.50.0/24         scram-sha-256
    '';

    ensureDatabases = [
      "synapse"
      "mas"
    ];
    ensureUsers = [
      {
        name = "synapse";
        ensureDBOwnership = true;
      }
      {
        name = "mas";
        ensureDBOwnership = true;
      }
    ];
  };
}
