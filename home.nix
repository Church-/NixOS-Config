{ pkgs, ... }:

{


  home.packages = (import ./packages.nix pkgs) ++ (import ./python.nix pkgs) ++ (import ./games.nix pkgs);

  nixpkgs.config.allowUnfree = true;
  
  programs.home-manager = {
    enable = true;
  };
}
