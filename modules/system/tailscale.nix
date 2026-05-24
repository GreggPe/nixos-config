{
  flake.modules.nixos.system-tailscale = { ... }: {
    services.tailscale.enable = true;
  };
}
