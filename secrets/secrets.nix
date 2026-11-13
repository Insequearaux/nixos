
let 
  ets-c837622227 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIE6s9UVvdPp0cb6w2o8BrC1n3fQEBKycTnKl0At5+A4";
  taylor = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGKdKezxirFDTtAcX6aykVHQwPLD2wWoSb5ZeEJuTXCE";
  epicyurimomentsandaura = "";
in
{
"etspasswd.age".publicKeys = [ ets-c837622227 taylor ];
"engrpasswd.age".publicKeys = [ ets-c837622227 taylor ];
"wg-csu-preshared-key.age".publicKeys = [ taylor ets-c837622227 ];
"wg-csu-private-key.age".publicKeys = [ taylor ets-c837622227 ];
}
