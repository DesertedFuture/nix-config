{pkgs, ... }: {
let
    tuigreet = "{pkgs.greetd.tuigreet}/bin/tuigreet";
in
{
    services.greetd = {
        enable = true;
        settings = {
            default_seesion = {
                command = "${tuigreet} --time --remember --cmd --Hyprland";
                user = "greeter";
            };
        };
    };

    systemd.services.greetd.serviceConfig = {
        Type = "idle";
        StandardInput = "tty";
        StandardOutput = "tty";
        StandardError = "journal";
        TTYReset = true;
        TTYVHangup = true;
        TTYVDisallocate = true;
    };
}
