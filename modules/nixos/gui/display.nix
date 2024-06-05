{config,pkgs, ...}:
{
  services = {
    displayManager = {
      defaultSession = "sddm";
      enable = true;
        sddm = {
        wayland.enable = true;
      };
      autoLogin = {
        enable = true;
	user = "scott";
      };
    };
  };
}
