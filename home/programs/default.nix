{ config, lib, pkgs, ... }: {
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
    obsidian

    # IDE
    insomnia


    # db related
    dbeaver-bin
    mycli
    pgcli
    vivaldi
    neovim
    tree
    discord
    vesktop
    steam
    tmux
  ];

}
