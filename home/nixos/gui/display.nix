{config,pkgs, ...}:
{
  services = {
    displayManager = {
      enable = true;
        sddm = {
        wayland.enable = true;
      };
      #autoLogin = {
      #  enable = true;
	#user = "scott";
	#theme = "Where_is_my_sddm_theme";
      #};
    };
  };
}
