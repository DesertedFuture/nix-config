{config, pkgs, ...}:{
  programs.waybar = {
    enable = true;
    settings = builtins.readFile ./waybar-config.jsonc;
  };

}
