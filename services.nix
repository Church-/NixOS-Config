# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{


  #Services
  #Turn on docker
  virtualisation.docker.enable = true;
  #JournalD settings
  services.journald.extraConfig = "Storage=persistent"; 
  # Enable CUPS to print documents.
  services.printing.enable = true;
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  # Enable touchpad support.
  services.xserver.libinput.enable = true;  

}

