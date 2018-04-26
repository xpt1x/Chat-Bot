#include <amxmodx>

#define DELAY 30.0 // Delay in AD Messages

enum _:VARTYPE {
	text[32], response[180]
}

new const admessages[][] = // Ad Messages Here
{
	"^1Sample ^3Text^4 1",
	"^3Sample ^4Text^1 2",
	"^4Sample ^1Text^3 3"
}

new variables[][VARTYPE] = /* Text and then its Response */
{
	{"fuck", "^4Check ^3FUCK ^1is good"},
	{"boy", "^4Check ^3BOY ^1is good"},
	{"chill", "^4Check ^3CHILL ^1is good"}
}

public plugin_init() {
	register_plugin("Adverts & Auto Responder", "1.0", "DiGiTaL");
	set_task(DELAY, "show_ads",_,_,_, "b");
	register_clcmd("say", "handleSay")
	register_clcmd("say_team", "handleSay")
}

public show_ads() {
	static numMsg
	new players[32], num, x
	get_players(players, num);
	
	for(new i;i<num;i++) {
		x = players[i];
		client_print_color(x, 0, "%s", admessages[numMsg > charsmax(admessages) ? (numMsg = 0) : numMsg]);
	}
	numMsg++;
}

public handleSay(id) {

	new szArg[192]
	read_args(szArg, 191)
	remove_quotes(szArg)
	for(new i=0; i < sizeof variables;i++)
	{
		if(containi(szArg, variables[i][text]) != -1)
			client_print_color(id, 0, "%s", variables[i][response])
	}
	return PLUGIN_CONTINUE
}
