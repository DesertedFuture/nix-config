{config, pkgs, ... }:{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    strace
    ltrace
    tcpdump
    sysstat
    sysbench
    neofetch
    vivaldi
    neovim
    wget
    git
    vim
    networkmanagerapplet
    grim

  ];

  environment.variables.EDITOR = "nvim";
}
