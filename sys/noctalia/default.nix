{ inputs, ... }:
{
  imports = [
    inputs.noctalia-greeter.nixosModules.default
  ];
  services.displayManager = {
    autoLogin = {
      enable = true;
      user = "xiaoqi";
    };
    noctalia-greeter = {
      enable = true;
    };
  };
}
