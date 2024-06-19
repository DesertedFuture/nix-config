{...}: {
 # imports =  myLib.scanPaths ./.;
 imports = [./core.nix ./i18n.nix ./nix.nix ./packages.nix ./user-group.nix ./core.nix ./dump.nix ./nvidia.nix ./ssh_agent.nix];
}
