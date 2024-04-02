{config, pkgs, ... }:{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    strace
    ltrace
    tcpdump
    

    sysstat
    sysbench

    neofetch
    neovim
    vivaldi
    wget
    git
    vim
    applet
    grim

  ];

  environment.variables.EDITOR = "nvim";
}
