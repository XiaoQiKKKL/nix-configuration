{
  # Bootloader.
  boot.loader.systemd-boot = {
    enable = true;
    configurationLimit = 2;
    consoleMode = "max";
  };
  boot.loader.efi.canTouchEfiVariables = true;
}
