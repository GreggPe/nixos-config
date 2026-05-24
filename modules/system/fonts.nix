{
  flake.modules.nixos.system-fonts = { pkgs, ... }: {
    fonts.packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      nerd-fonts.fira-code
      noto-fonts
      noto-fonts-color-emoji
    ];

    fonts.fontconfig.defaultFonts.monospace = [ "JetBrainsMono Nerd Font" ];
  };
}
