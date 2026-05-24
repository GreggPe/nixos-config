{
  flake.modules.nixos.desktop-apps = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      helium
      obsidian
      jellyfin-media-player
      nautilus
      vesktop                # Discord
      feishin                # client musique
    ];
  };
}
