{
  flake.modules.nixos.desktop-sddm = { pkgs, ... }: {
    services.displayManager.sddm = {
      enable = true;
      wayland.enable = true;
      package = pkgs.kdePackages.sddm;
      theme = "sddm-astronaut-theme";

      # Force un thème de curseur pour le greeter
      settings = {
        Theme = {
          CursorTheme = "Adwaita";
          CursorSize = 24;
        };
      };

      extraPackages = with pkgs; [
        (sddm-astronaut.override { embeddedTheme = "jake_the_dog"; })
        kdePackages.qtmultimedia
        kdePackages.qtsvg
        kdePackages.qtvirtualkeyboard
      ];
    };

    environment.systemPackages = with pkgs; [
      (sddm-astronaut.override { embeddedTheme = "jake_the_dog"; })
      adwaita-icon-theme   # thème de curseur dispo pour SDDM
    ];
  };
}
