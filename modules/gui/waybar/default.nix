{mylib, ...}: {
  #imports = mylib.scanPaths ./.;
  imports = [
    ./waybar.nix
  ];
}
