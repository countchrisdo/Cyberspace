if (hasweapon)
{
	mygun = instance_create_layer(x,y,"Gun",ObjectEGun)
	with (mygun)
	{
		owner = other.id
	}
}
else mygun = noone;