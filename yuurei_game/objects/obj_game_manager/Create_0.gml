globalvar INTERFACESTART; 
INTERFACESTART= 50

maxhp = 431

globalvar PLAYERHP;
PLAYERHP = 431

globalvar PLAYERMANA;
PLAYERMANA = INTERFACESTART

globalvar PLAYERMONEY;
PLAYERMONEY = 1000

globalvar PAUSED; 
PAUSED = false

globalvar CURRPLAYER;
CURRPLAYER = obj_zoella

globalvar CURRWEAPON;
CURRWEAPON = obj_shuriken_weapon

globalvar CURRPET;
CURRPET = obj_basan

globalvar BUYPET;
BUYPET = false

globalvar BUYWEAPON;
BUYWEAPON = false

globalvar INGAME;
INGAME = false;

x_init = 32
y_init = 225

if room == rm_base{
	audio_play_sound(snd_bgm_base, 0, true)
}
else if room == rm_game or room == rm_game_2{
	audio_play_sound(snd_bgm_base, 0 ,true)
}
else if room == rm_start{
	//audio_play_sound(x, 0, true)
}