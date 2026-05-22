{ lib, ... }:
{
  options.flake.modules = lib.mkOption {
    type = lib.types.attrsOf (lib.types.attrsOf lib.types.unspecified);
    default = { };
    description = "Tiroirs de modules NixOS/home-manager partagés (pattern Dendritic).";
  };
}
