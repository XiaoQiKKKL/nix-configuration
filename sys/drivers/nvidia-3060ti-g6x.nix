{ pkgs, ... }:
{
  # Nvidia Driver
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware = {
    graphics.enable = true;
    graphics = {
      extraPackages = with pkgs; [
        nvidia-vaapi-driver
        libva-vdpau-driver
        libvdpau-va-gl
      ];
    };
    nvidia = {
      open = true;
      modesetting.enable = true;
      powerManagement = {
        enable = true;
      };
    };
  };
}
