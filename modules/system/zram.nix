{
  flake.modules.nixos.system-zram = { ... }: {
    zramSwap.enable = true;
  };
}
