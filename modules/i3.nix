{pkgs, ...}:
{
  services.xserver = {
    enable = true;
    #autorun = true;

    displayManager = {
      gdm.enable = true;
      defaultSession = "gnome";
      #autoLogin.enable = true;
      #autoLogin.user = "scott";
    };
    desktopManager = {
      gnome.enable = true;
    };

    videoDrivers = ["nvidia"];
  };
}
