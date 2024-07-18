{pkgs, ...} : 

{
    services = {
        greetd = {
            enable = true;
            vt = 3;
            settings = {
                default_session = {
                    user = "scott";
                    command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland";
                };
            };
        };
    };
}
