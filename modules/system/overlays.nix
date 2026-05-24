{ inputs, ... }:
{
  flake.modules.nixos.system-overlays = { ... }: {
    nixpkgs.overlays = [
      inputs.helium.overlays.default
      (final: prev: {
        openldap = prev.openldap.overrideAttrs (old: {
          doCheck = false;
        });
      })
    ];
  };
}
