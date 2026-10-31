{ pkgs, ... }:
{
  systemd.services.rclone-webdav = {
    description = "Rclone WebDAV Service (Read-Only)";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      Type = "simple";
      ExecStart = "${pkgs.rclone}/bin/rclone serve webdav /mnt/qbittorrent --addr 0.0.0.0:6061 --user xiaoqi --pass Xiaoqi-100609 --read-only";
      Restart = "on-failure";
      User = "xiaoqi";
    };
  };
}
