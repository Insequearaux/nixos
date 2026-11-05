
let 
  ets-c837622227 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICJAHschUIfM8scIHVqa4vI042AJLCqiVe+ShE30QzY6";
in
{

"etspasswd.age".publicKeys = [ ets-c837622227 ];
"engrpasswd.age".publicKeys = [ ets-c837622227 ];


}
