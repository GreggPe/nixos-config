let
  xps13 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPvNdBHQdFsUejJ/trWV4ig+LhqdAIUhoJ57xsa9loIn root@xps13";
  systems = [ xps13 ];
in
{
  "test-secret.age".publicKeys = systems;
}
