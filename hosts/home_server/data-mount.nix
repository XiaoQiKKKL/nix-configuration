{
  fileSystems."/mnt" = {
    device = "/dev/disk/by-uuid/c00d54c1-3bc4-45d7-903c-5eca5c136682";
    fsType = "btrfs";
    options = [
      "compress=zstd"
      "nofail"
      "subvol=@"
    ];
  };
}
