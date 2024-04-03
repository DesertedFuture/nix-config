{mylib, ...}: {
  imports = mylib.scanPaths ./.;
#  imports = [
#    ./core.nix
#    ./dump.nix
#    ./i18n.nix
#    ./nix.nix
#    ./packages.nix
#    ./user-group.nix
#    ./nvidia.nix
#  ];
}
