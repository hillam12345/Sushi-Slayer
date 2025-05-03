event_inherited();  // Keep the press-down animation

audio_play_sound(snd_yoo, 0, false);

// Reset player HP for a fresh run
global.player_hp = global.player_max_hp;

// Reset buffs/dishes/key flags
sc_reset_run_data();

// Move to the game room
room_goto(rm_game);
