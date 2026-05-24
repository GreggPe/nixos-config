{ inputs, ... }:
{
  flake.modules.nixos.system-agenix = { ... }: {
    imports = [ inputs.agenix.nixosModules.default ];

    # Secrets
  };
}
