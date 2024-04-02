{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    # archives
    zip
    unzip
    p7zip

    # utils
    ripgrep
    yq-go # https://github.com/mikefarah/yq
    htop

    # misc
    libnotify
    wineWowPackages.wayland
    xdg-utils
    graphviz

    # productivity
    #obsidian

    # IDE
    insomnia


    # db related
    dbeaver
    mycli
    pgcli
    vivaldi
    neovim
    tree
    discord
    vesktop
    steam
    steam-original
    steam-run
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile ../linux/gui/hyperland/hyprland.conf;
  };
  steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
}
