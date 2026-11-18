
let 
  ets-c837622227 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIE6s9UVvdPp0cb6w2o8BrC1n3fQEBKycTnKl0At5+A4";
  taylor = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGKdKezxirFDTtAcX6aykVHQwPLD2wWoSb5ZeEJuTXCE";
  epicyurimomentsandaura = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOIB/MpgLipnR2aJ3thMERlwSbc1XY+M5NyireaqRakU epicyurimomentsandaura@girl-in-shell";
in
{
"etspasswd.age".publicKeys = [ ets-c837622227 taylor epicyurimomentsandaura ];
"engrpasswd.age".publicKeys = [ ets-c837622227 taylor epicyurimomentsandaura ];
"wg-csu-preshared-key.age".publicKeys = [ taylor ets-c837622227 epicyurimomentsandaura ];
"wg-csu-private-key.age".publicKeys = [ taylor ets-c837622227 epicyurimomentsandaura ];
}
