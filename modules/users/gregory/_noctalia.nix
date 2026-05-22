{ inputs, ... }:
{
  imports = [ inputs.noctalia.homeModules.default ];

  programs.noctalia-shell = {
    enable = true;
    # Les settings viendront ici plus tard (barre, wallpaper, etc.)
    # On démarre avec la config par défaut pour valider que ça tourne.
  };
}
