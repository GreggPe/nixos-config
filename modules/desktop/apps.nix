{
  flake.modules.nixos.desktop-apps = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      librewolf              # navigateur axé vie privée
      obsidian               # prise de notes (unfree)
      jellyfin-media-player  # client Jellyfin pour tes films
    ];
  };
}
