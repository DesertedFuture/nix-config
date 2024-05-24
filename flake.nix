{
  description = "new attemp";

  inputs = {
    # NixOS official package source, using the nixos-23.11 branch here
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # Latest stable branch of nixpkgs, used for version rollback
    # The current latest version is 23.11
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { self, nixpkgs, hyprland, ... }@inputs: let 
  system = "x86_64-linux";
  inherit (inputs.nixpkgs) lib;
  mylib = import ./lib {inherit lib;};
  myvars = import ./vars {inherit lib;};
  args = { inherit inputs lib mylib myvars system;};
  in
  {
    nixosConfigurations.Hades = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = args;
      modules = [
      ./hosts/Hades

      ];
    };
  };
}
