{
  flake.modules.nixos.system-overlays = { ... }: {
    nixpkgs.overlays = [
      (final: prev: {
        openldap = prev.openldap.overrideAttrs (old: {
          doCheck = false;
        });
      })
    ];
  };
}
