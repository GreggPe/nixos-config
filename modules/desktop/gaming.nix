{
  flake.modules.nixos.gaming = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      lutris
      bottles
    ];

    # Support graphique 32-bit (requis par Wine/jeux)
    hardware.graphics = {
      enable = true;
      enable32Bit = true;
    };
  };
}
