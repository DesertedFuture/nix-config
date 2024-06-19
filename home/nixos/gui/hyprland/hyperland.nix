{pkgs,lib, config, ...}:
let
  startupScript = pkgs.pkgs.writeShellScriptBin "start" ''
  ${pkgs.waybar}/bin/waybar &
  ${pkgs.swww}/bin/swww init &
  sleep 1
  swww img DP-1 ~/home/scott/Downloads/images/circle-wave.gif &
  swww img DP-2 ~/home/scott/Downloads/images/peaceful-blue-hue.gif &
  '';
in
{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enableXdgAutostart = true;
    package = pkgs.hyprland;
    xwayland.enable = true;
    systemd.enable = true;

    settings = {
      #exec-once = startupScript;
      "monitor" = ["DP-1,preferred,auto,auto" "DP-2, preferred,auto,auto" "Unknown-1,disable"];
      "$terminal" = "kitty";
      "$fileManager" = "dolphin";
      "$menu" = "rofi -show drun -show-icons";
      env = ["XCURSOR_SIZE,24" "QT_QPA_PLATFORMTHEME,qt5ct"];
      input = {
        kb_layout = "us";
	follow_mouse = "1";
	touchpad = {
	  natural_scroll = "1";
	};
	sensitivity = "0";
      };
      general = {
        gaps_in = 5;
	gaps_out =20;
	border_size = 2;
	"col.active_border" = "rgba(33ccffee) rgba(00ff9933) 45deg";
	"col.inactive_border" = "rgba(595959aa)";
	layout = "dwindle";
	allow_tearing = false;
      };
      decoration = {
        rounding = 10;
        blur = {
          enabled = true;
	  size = 3;
	  passes = 1;
        };
        drop_shadow = "yes";
	shadow_range = 4;
	shadow_render_power = 3;
	"col.shadow" = "rgba(1a1a1aee)";
      };
      animations = {
        enabled = "yes";
	"bezier" = "myBezier, .05, .9, .1, 1.05";
	animation = [
	  "windows, 1, 7, myBezier"
	  "windowsOut, 1, 7, default, popin 80%"
	  "border, 1, 10, default"
	  "borderangle, 1 ,8, default"
	  "fade, 1, 7, default"
	  "workspaces, 1, 6, default"
	  ];
      };
      
      dwindle = {
        pseudotile = "yes";
	preserve_split = "yes";
      };

      master = {
        new_is_master = true;
      };

      device = {
        name = "epic-mouse-v1";
	sensitivity = "-0.5";
      };

      gestures = {
        workspace_swipe = "off";
      };
      
      windowrulev2 = "suppressevent maximize, class:.*";

      "$mod" = "SUPER";

      bind = [
        "$mod, Q, exec, $terminal"
        "$mod, C, killactive,"
        "$mod, M, exit,"
        "$mod, E, exec, $fileManager"
        "$mod, R, exec, $menu"
        "$mod, P, pseudo,"
        "$mod, V, togglesplit,"
    	"$mod, h, movefocus, l"
    	"$mod, j, movefocus, u"
    	"$mod, k, movefocus, d"
    	"$mod, l, movefocus, r"
	
    	"$mod, 1, workspace, 1"
    	"$mod, 2, workspace, 2"
    	"$mod, 3, workspace, 3"
    	"$mod, 4, workspace, 4"
    	"$mod, 5, workspace, 5"
    	"$mod, 6, workspace, 6"
    	"$mod, 7, workspace, 7"
    	"$mod, 8, workspace, 8"
    	"$mod, 9, workspace, 9"
    	"$mod, 0, workspace, 0"

    	"$mod SHIFT, 1, movetoworkspace,1"
    	"$mod SHIFT, 2, movetoworkspace,2"
    	"$mod SHIFT, 3, movetoworkspace,3"
    	"$mod SHIFT, 4, movetoworkspace,4"
    	"$mod SHIFT, 5, movetoworkspace,5"
    	"$mod SHIFT, 6, movetoworkspace,6"
    	"$mod SHIFT, 7, movetoworkspace,7"
    	"$mod SHIFT, 8, movetoworkspace,8"
    	"$mod SHIFT, 9, movetoworkspace,9"
    	"$mod SHIFT, 0, movetoworkspace,10"

    	"$mod, S, togglespecialworkspace, magic"
    	"$mod SHIFT, S, movetoworkspace, special:magic"
      ];
      bindm = [
        "$mod, mouse:272, movewindow"
	    "$mod, mouse:273, resizewindow"
      ];
    };
  };
}
