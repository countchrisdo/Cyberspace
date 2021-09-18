//collision event

with (other) 
{
	HP = HP - 1;
	flash = 3;
	hitfrom = other.direction;
}

instance_destroy();