{
  flake.modules.nixos.system-power = { ... }: {
    services.upower.enable = true;
  };
}
