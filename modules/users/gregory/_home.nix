{ pkgs, ... }:
{
  imports = [ ./_desktop.nix ./_noctalia.nix ];

  home.username = "gregory";
  home.homeDirectory = "/home/gregory";
  home.stateVersion = "25.11";
  # Zsh + Starship (ton shell prévu)
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = "fastfetch";
  };
  programs.starship.enable = true;
  # Git (config de base — adapte le nom/email si besoin)
  programs.git = {
    enable = true;
    settings.user.name = "GreggPe";
    settings.user.email = "gregoryperisset06@proton.me";  # ton vrai email
  };
  # Laisse home-manager se gérer lui-même
  programs.home-manager.enable = true;
}
