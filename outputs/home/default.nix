inputs: {
  nixos = import ./nixos.nix inputs;
  homeserver = import ./home_server.nix inputs;
}
