
let 
  ets-c837622227 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICJAHschUIfM8scIHVqa4vI042AJLCqiVe+ShE30QzY6";
  taylor-kurisu = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGKdKezxirFDTtAcX6aykVHQwPLD2wWoSb5ZeEJuTXCE";
in
{
"etspasswd.age".publicKeys = [ ets-c837622227 taylor-kurisu];
"engrpasswd.age".publicKeys = [ ets-c837622227 ];
}
