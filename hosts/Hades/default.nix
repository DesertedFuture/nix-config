{ config, pkgs, myvars, ... }:

{
  imports =
    [
      #configuratons for basic nix stuff
      ../../modules/base

      # ../../modules/nix/desktop.nix
      ../../home/linux/gui


      # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  networking.hostName = "Hades"; # Define your hostname.
  # Enable networking
  networking.networkmanager.enable = true;

  # for Nvidia GPU
  services.xserver.videoDrivers = ["nvidia"];
  hardware.opengl.enable = true;
  hardware.nvidia = {
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    modesetting.enable = true;
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

}
