{mylib, ...}: {
  imports = mylib.scanPaths ./.;
#  imports = [
#    ./hyperland/hyperland.nix
#    ./display.nix
#  ];
}
