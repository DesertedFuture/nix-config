{config,pkgs, ...}:
{
  services = {
    displayManager = {
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
