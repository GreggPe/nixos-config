{ ... }:
{
  # Pose la config Niri au bon endroit
  xdg.configFile."niri/config.kdl".source = ./_niri.kdl;

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
        font = "monospace:size=11";
        pad = "8x8";
      };
    };
  };
}
