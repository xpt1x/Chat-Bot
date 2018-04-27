#include <amxmodx>
#define VERSION "1.1"

#define DELAY 30.0 
#define PRINTDELAY 0.2
//#define PRINTTOALL 

enum _:VARTYPE {
	text[32], response[192]
}

new admessages[][] = 
{
	"^1[^4ChatBot^1] ^3Sample Text^4 1",
	"^1[^4ChatBot^1] ^3Sample Text^4 2",
	"^1[^4ChatBot^1] ^3Sample Text^4 3"
}

new variables[][VARTYPE] =
{
	{ "lag", "^4Server ^1is ^3not lagging" },
	{ "/rates", " ^4Server ^1rates are : ^3..." },
	{ "hacker", "^4Report ^1hacker to ^3Admin ^1by beginning msg with ^4@" },
	{ "test", "^4You said ^3TEST" },
	{ "/cmd", "^3Cmd ^4Test - Passed" }
}

new szArg[192]

public plugin_init() {

	register_plugin("Chat Bot", VERSION, "DiGiTaL")
	register_cvar("chatbot", VERSION, FCVAR_SERVER|FCVAR_SPONLY)
	register_clcmd("say", "handleSay")
	register_clcmd("say_team", "handleSay")
	set_task(DELAY, "show_ads",_,_,_, "b")
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

	read_args(szArg, charsmax(szArg))
	remove_quotes(szArg)
	set_task(PRINTDELAY, "PrintT", id)
}

public PrintT(id)
{
	for(new i=0; i < sizeof variables;i++)
	{
		if(containi(szArg, variables[i][text]) != -1)
		{
			#if defined PRINTTOALL
			client_print_color(0, 0, "%s", variables[i][response])
			#else 
			client_print_color(id, 0, "%s", variables[i][response])
			#endif
		}
	}
}
