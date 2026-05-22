{
  flake.modules.nixos.system-locale = { ... }: {
    time.timeZone = "Europe/Zurich";
    i18n.defaultLocale = "en_US.UTF-8";
    console.keyMap = "sf";
  };
}
