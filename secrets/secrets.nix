
let 
  taylor = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICJAHschUIfM8scIHVqa4vI042AJLCqiVe+ShE30QzY6";
in
{

"etspasswd.age".publicKeys = [ taylor ];
"engrpasswd.age".publicKeys = [ taylor ];


}
