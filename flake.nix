{
  description = "new attemp";


  inputs = {
    # NixOS official package source, using the nixos-23.11 branch here
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # Latest stable branch of nixpkgs, used for version rollback
    # The current latest version is 23.11
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { self, nixpkgs, home-manager, hyprland, ... }@inputs: {
    # Please replace my-nixos with your hostname
    nixosConfigurations.Hades = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
      ./hosts/Hades

      home-manager.nixosModules.home-manager 
      {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.users.scott = import ./home;
      }
      ];
    };
  };
}
