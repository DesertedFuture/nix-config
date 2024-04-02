{config, pkgs, ...}:{
  programs.waybar = {
    enable = true;
    settings = builtins.readFile ./waybar-conf.jsonc
  };

}
