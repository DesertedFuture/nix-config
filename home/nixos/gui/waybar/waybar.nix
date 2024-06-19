{...}:{
    programs.waybar = {
        enable = true;
        systemd = {
            enable = true;
            target = "graphical.target";
        };
    };
}
