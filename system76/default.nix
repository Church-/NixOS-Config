{ config, pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages_4_18;
  # Imports the overlay
  nixpkgs.overlays = [
    (self: super: {
      linuxPackages_4_18 = super.linuxPackages_4_18.extend(lpself: lpsuper: {
        system76 = lpself.callPackage ./system76.nix {};
      });
    })
  ];

  boot.extraModulePackages = [ pkgs.linuxPackages_4_18.system76 ];

  # This line I think is not needed
  #boot.kernelModules = [ "system76" ];
}
