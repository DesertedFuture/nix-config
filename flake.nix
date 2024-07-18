{
  description = "new attemp";

  inputs = {
    # NixOS official package source, using the nixos-23.11 branch here
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # Latest stable branch of nixpkgs, used for version rollback
    
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      url = "github:hyprwm/Hyprland/v0.38.1";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ...} @ inputs : let
  inherit (self) outputs;
  system = "x86_64-linux";
  # mylib = import ./lib {inherit lib;};
  myvars = import ./vars;
  # args = { inherit inputs lib mylib myvars; };
  in
  {
    nixosConfigurations.Hades = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs outputs system myvars; };
      modules = [
        ./hosts/Hades
        home-manager.nixosModules.home-manager {
	  home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;
	  home-manager.users.scott = import ./home/home.nix;
	  home-manager.extraSpecialArgs = {inherit inputs outputs system;};
        }
      ];
    };

  };
}
