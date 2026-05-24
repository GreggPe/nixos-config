{
  flake.modules.nixos.gaming = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      lutris
      bottles
      vulkan-tools     # vulkaninfo dans le PATH (fait taire le warning Lutris)
    ];

    # Support graphique (requis par Wine/jeux)
    hardware.graphics = {
      enable = true;
      enable32Bit = true;
      extraPackages = with pkgs; [
        intel-media-driver       # accélération vidéo Intel (UHD 620)
        vulkan-loader
      ];
    };
  };
}
