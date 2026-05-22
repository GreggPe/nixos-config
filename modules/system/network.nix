{
  flake.modules.nixos.system-network = { ... }: {
    networking.hostName = "xps13";
    networking.networkmanager.enable = true;
  };
}
