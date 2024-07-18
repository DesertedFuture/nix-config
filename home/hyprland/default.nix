{mylib, ...}: {
  #imports = mylib.scanPaths ./.;
  imports = [./hyperland.nix ./test.nix];
}

