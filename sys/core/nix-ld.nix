{ pkgs, ... }:
{
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    glibc
    neovim
    python3
    wget
    git
    tcpdump
    openssl
  ];
}
