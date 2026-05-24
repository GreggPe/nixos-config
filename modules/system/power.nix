{
  flake.modules.nixos.system-power = { ... }: {
    services.upower.enable = true;

    # Gestion thermique Intel (évite la surchauffe du XPS)
    services.thermald.enable = true;

    # TLP : optimisation autonomie batterie
    services.tlp = {
      enable = true;
      settings = {
        # Gouverneur CPU : perf sur secteur, économe sur batterie
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

        # Énergie CPU (Intel)
        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
        CPU_ENERGY_PERF_POLICY_ON_BAT = "power";

        # Turbo boost : activé sur secteur, désactivé sur batterie
        CPU_BOOST_ON_AC = 1;
        CPU_BOOST_ON_BAT = 0;

        # Comportement à la fermeture (optionnel)
        PLATFORM_PROFILE_ON_AC = "performance";
        PLATFORM_PROFILE_ON_BAT = "low-power";
      };
    };
  };
}
