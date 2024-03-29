{pkgs, ...}:
{
  services.xserver = {
    enable = true;
    #autorun = true;

    displayManager = {
      #sgdm.enable = true;
      sddm.enable = true;
      #defaultSession = "gnome";
      #autoLogin.enable = true;
      #autoLogin.user = "scott";
    };
    desktopManager = {
      #gnome.enable = true;
    };

    videoDrivers = ["nvidia"];
  };
}
