{pkgs, ...}:{

  home.packages =with pkgs; [
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
}
