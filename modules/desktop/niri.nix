{
  flake.modules.nixos.desktop-niri = { pkgs, ... }: {
    # Niri compositeur Wayland
    programs.niri.enable = true;

    # Portails XDG (capture d'écran, partage, file pickers)
    xdg.portal = {
      enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    };

    # Polkit (élévation de privilèges graphique)
    security.polkit.enable = true;

    # Paquets de base pour une session Wayland fonctionnelle
    environment.systemPackages = with pkgs; [
      foot
      fuzzel
      wl-clipboard
      mako
      brightnessctl   # contrôle luminosité
      grim            # captures d'écran
      slurp           # sélection de zone pour captures
    ];
  };
}
