/// @description 

//Plays the music
audio_stop_sound(SoundBeat22);
audio_play_sound(SoundEnding,5,true);

//different endings
if (global.kills > 0)
{
	endtext[0] = "And on this day our hero had slain " + string(global.kills) + " people.";
	endtext[1] = "But some of those people has guns too, so...";
	endtext[2] = "She was probably saving the world, or something.";
	endtext[3] = "Regardless, she was arrested two days later \nand spent the rest of her life in prison";
	endtext[4] = "The defense team tried to argue that the sexy recoil effects \nand hit flashes were to blame, but to no avail";
	endtext[5] = "Her dad would later comment that he was \"not angry, just dissapointed.\"";
	endtext[6] = "The End.";
}
else
{
	endtext[0] = "On this day our hero had a wonderful time";
	endtext[1] = "They reported a discarded firearm to the local authorities\nand were thanked for assisting in an ongoing crime investigation";
	endtext[2] = "And all it took was behavior that outside of a video game context\none would hope is completly normal.";
	endtext[3] = "Who would have though?";
	endtext[4] = "The End";
}

spd = 0.5;
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";