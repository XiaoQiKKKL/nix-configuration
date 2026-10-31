inputs: {
  nixos = import ./nixos.nix inputs;
  home_server = import ./home_server.nix inputs;
}
