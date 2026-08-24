{ inputs, ... }:
{
  imports = [
    inputs.noctalia-greeter.nixosModules.default
  ];
  programs.noctalia-greeter = {
    enable = true;
  };
}
