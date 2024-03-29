{ config, pkgs, ... }:
{
  # Bootloader.
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot/efi"; # ← use the same mount point here.
    };
    grub = {
      enable = true;
      configurationLimit = 10;
      device = "nodev";
      useOSProber = true;
      efiSupport = true;
    };
  };
}
