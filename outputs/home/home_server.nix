{ nixpkgs, home-manager, ... }@inputs:
nixpkgs.lib.nixosSystem {
  specialArgs = { inherit inputs; };
  modules = [
    {
      nixpkgs.config.android_sdk.accept_license = true;
    }

    ../../hosts/home/home_server
    ../../hosts/home/home_server/home/overlays.nix

    home-manager.nixosModules.home-manager
    {
      home-manager.useGlobalPkgs = true;
      home-manager.backupFileExtension = "backup";
      home-manager.useUserPackages = true;
      home-manager.users.xiaoqi = import ../../hosts/home/home_server/home;
      home-manager.extraSpecialArgs = { inherit inputs; };
    }
  ];
}
