inputs@{ nixpkgs, ... }:
{
  nixosConfigurations = nixpkgs.lib.attrsets.mergeAttrsList [
    (import ./home inputs)
    # (import ./microvm inputs)
  ];
}
