{config, pkgs,lib,...}:{
  programs.waybar = {
    enable = true;
    #settings = lib.importJSON ./waybar-config.jsonc;
  };
}
