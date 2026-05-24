{ inputs, config, ... }:
{
  flake.nixosConfigurations.xps13 = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    specialArgs = { inherit inputs; };
    modules = [
      # Home-Manager intégré
      inputs.home-manager.nixosModules.home-manager
      {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.extraSpecialArgs = { inherit inputs; };
      }

      # Disko
      inputs.disko.nixosModules.disko

      # On pioche tous nos modules dans les "tiroirs" flake-parts
      config.flake.modules.nixos.xps13-hardware
      config.flake.modules.nixos.system-boot
      config.flake.modules.nixos.system-network
      config.flake.modules.nixos.system-zram
      config.flake.modules.nixos.system-locale
      config.flake.modules.nixos.system-nix
      config.flake.modules.nixos.system-base
      config.flake.modules.nixos.user-gregory
      config.flake.modules.nixos.desktop-niri
      config.flake.modules.nixos.desktop-sddm
      config.flake.modules.nixos.system-agenix
      config.flake.modules.nixos.system-unfree
      config.flake.modules.nixos.pentest-tools
      config.flake.modules.nixos.desktop-apps
      config.flake.modules.nixos.system-tailscale
      config.flake.modules.nixos.gaming
      config.flake.modules.nixos.system-overlays
    ];
  };
}
