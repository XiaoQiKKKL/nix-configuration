{ config, pkgs, ... }:
{
  imports = [
    ./i18n.nix
    ./network.nix
    ./nix-ld.nix
    ./nix-settings.nix
    ./ssh.nix
    ./suid.nix
    ./xkb.nix
    ./stylix.nix
    ./sops-nix.nix
    ./nexttrace.nix
    ./bootloader.nix
    ./kernel.nix
  ];
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
    neovim
    bind
    nftables
    tcpdump
    openssl
    systemd
  ];
  programs.fish.enable = true;
}
