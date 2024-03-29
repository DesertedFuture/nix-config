{config, pkgs,lib, ...}:{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE = "1";
  };

  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
  };
  environment.systemPackages =with pkgs; [
    waybar
    eww
    dunst
    libnotify
    swww
    kitty
    rofi-wayland
    fuzzel
    tofi
    xdg-desktop-portal-hyprland
    xwayland
    meson
    wayland-utils
    wayland-protocols
  ];
  xdg.portal = {
    wlr.enable = true;
    enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-gtk];
  };
  nixpkgs.overlays = [
    (self: super: {
      waybar = super.waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ [
	  "-Dexperimental=true"
	];
      });
    })
  ];
  qt.enable = true;
  qt.platformTheme = "gtk2";
  qt.style = "gtk2";

}
