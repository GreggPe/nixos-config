{
  flake.modules.nixos.system-snapshots = { ... }: {
    services.snapper.configs.home = {
      SUBVOLUME = "/home";
      ALLOW_USERS = [ "gregory" ];

      # Snapshots périodiques automatiques
      TIMELINE_CREATE = true;
      TIMELINE_CLEANUP = true;

      # Combien on garde (rotation pour ne pas saturer le SSD)
      TIMELINE_LIMIT_HOURLY = 5;
      TIMELINE_LIMIT_DAILY = 7;
      TIMELINE_LIMIT_WEEKLY = 4;
      TIMELINE_LIMIT_MONTHLY = 6;
      TIMELINE_LIMIT_YEARLY = 0;
    };
  };
}
