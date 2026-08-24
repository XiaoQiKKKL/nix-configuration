{ pkgs, ... }:
{
  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_xanmod_latest;
}
