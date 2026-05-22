{ config, lib, pkgs, ... }:
{
  imports = [ ./hardware-configuration.nix ];

  # Bootloader (UEFI)
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # initrd systemd : requis pour l'enrôlement TPM2 plus tard
  boot.initrd.systemd.enable = true;

  networking.hostName = "xps13";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Zurich";

  # Ton utilisateur
  users.users.gregory = {
    isNormalUser = true;
    description = "Gregory";
    extraGroups = [ "wheel" "networkmanager" ];
    # mot de passe à définir au premier boot avec passwd
  };

  # SSH pour pouvoir continuer à distance après le premier boot
  services.openssh = {
    enable = true;
    settings.PermitRootLogin = "no";
  };

  # zram (ton swap compressé)
  zramSwap.enable = true;

  # Outils de base pour démarrer
  environment.systemPackages = with pkgs; [
    git
    vim
    wget
  ];

  # Active les flakes dès le départ
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Permet à ton user de sudo sans retaper (pratique pendant l'install)
  security.sudo.wheelNeedsPassword = true;

  system.stateVersion = "25.11";
}
