{
  flake.modules.nixos.user-gregory = { pkgs, ... }: {
    users.users.gregory = {
      isNormalUser = true;
      description = "Gregory";
      extraGroups = [ "wheel" "networkmanager" ];
      shell = pkgs.zsh;
    };
    programs.zsh.enable = true;
    home-manager.users.gregory = import ./_home.nix;
  };
}
