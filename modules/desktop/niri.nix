{
  flake.modules.nixos.desktop-niri = { pkgs, ... }: {
    # Niri compositeur Wayland
    programs.niri.enable = true;

    # Portails XDG
    xdg.portal = {
      enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    };

    # Polkit
    security.polkit.enable = true;

    # Variables de session : forcer Wayland natif (supprime la lenteur XWayland)
    environment.sessionVariables = {
      NIXOS_OZONE_WL = "1";        # Electron/Chromium (Helium, Obsidian, Vesktop) en Wayland
      MOZ_ENABLE_WAYLAND = "1";    # apps Mozilla en Wayland
    };

    # Paquets de l'environnement Wayland
    environment.systemPackages = with pkgs; [
      foot              # terminal
      fuzzel            # launcher (de secours, Noctalia gère le principal)
      wl-clipboard      # copier-coller Wayland
      mako              # notifications
      brightnessctl     # luminosité
      grim              # captures d'écran
      slurp             # sélection de zone
      adwaita-icon-theme
      xwayland-satellite # support X11 (pour Wine/Battle.net)
      vulkan-tools      # vulkaninfo (diagnostic GPU)
    ];
  };
}
