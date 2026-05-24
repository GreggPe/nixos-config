{ pkgs, ... }:
{
  # Pose la config Niri au bon endroit
  xdg.configFile."niri/config.kdl".source = ./_niri.kdl;

  programs.fastfetch.enable = true;

  # Préférence sombre standardisée (Nautilus + apps modernes)
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };

  # Thème GTK sombre (renfort)
  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };
    iconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
    };
  };
  # tmux (ton multiplexeur, le vrai outil pentest)
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    mouse = true;
    baseIndex = 1;
    historyLimit = 50000;
  };
  # Foot (terminal)
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "JetBrainsMono Nerd Font:size=11";
        pad = "8x8";
      };
    };
  };
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      mgr = {
        show_hidden = true;
        sort_by = "natural";
        sort_dir_first = true;
      };
    };
  }; 
}

