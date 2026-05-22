{
  flake.modules.nixos.system-base = { pkgs, ... }: {
    services.openssh = {
      enable = true;
      settings.PermitRootLogin = "no";
    };
    environment.systemPackages = with pkgs; [ git vim wget ];
    security.sudo.wheelNeedsPassword = true;
    system.stateVersion = "25.11";
  };
}
