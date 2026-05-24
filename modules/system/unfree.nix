{ lib, ... }:
{
  flake.modules.nixos.system-unfree = { lib, ... }: {
    nixpkgs.config.allowUnfreePredicate = pkg:
      builtins.elem (lib.getName pkg) [
        "burpsuite"
        "obsidian"
        "steam"
        "steam-unwrapped"
      ];
  };
}
