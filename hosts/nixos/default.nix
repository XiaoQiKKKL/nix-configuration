# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./user.nix

    ../../sys/core
    ../../sys/desktop

    ../../sys/drivers/nvidia-3060ti-g6x.nix
    ../../sys/drivers/otd.nix
    ../../sys/drivers/printing.nix
    ../../sys/drivers/touchpad.nix
    ../../sys/flatpak
    ../../sys/docker
    ../../sys/sunshine
    ../../sys/qbittorrent
    ../../sys/steam
    ../../sys/gamescope
    ../../sys/k3s
    ../../sys/postgresql

    ./postgres-ess.nix
    ./caddy
    ./sing-box
    ./mihomo
  ];

  # Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "26.05";
  # Did you read the comment?

}
