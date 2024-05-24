{mylib, ...}: {
  #imports = mylib.scanPaths ./.;
  imports = [./hyperland.nix];
}

