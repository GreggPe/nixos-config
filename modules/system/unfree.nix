{ lib, ... }:
{
  flake.modules.nixos.system-unfree = { lib, ... }: {
    nixpkgs.config.allowUnfreePredicate = pkg:
      builtins.elem (lib.getName pkg) [
        "burpsuite"
        # on ajoutera ici obsidian, steam, etc. au fur et à mesure
      ];
  };
}
