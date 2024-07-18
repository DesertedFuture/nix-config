{mylib, ...}: {
  #imports = mylib.scanPaths ./.;
  imports = [
    ./waybar.nix
    ./waybar_settings.nix
    ./waybar_style.nix
  ];
}
