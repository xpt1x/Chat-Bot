# Chat Bot
**Most Simple Advertiser and Responder Plugin**
## Usage
- Public Ad Messages should be added in : 
``` cpp 
new admessages[][] =  
```
- Auto Responder Text and Response should be added to : 
``` cpp
new variables[][VARTYPE] =
```
Example : 
``` cpp
new variables[][VARTYPE] =
{
	{ "lag", "^4Server ^1is ^3not lagging" }
}
```
This will print : **Server is not lagging**<br>
When some says **lag** in chat

## Settings within Source 
#define DELAY 30.0 ( Time delay between Public Ad Messages )<br>
#define PRINTDELAY 0.2 ( Time delay between Response from Server )<br>
//#define PRINTTOALL ( Uncomment if you want Response to be visible for all players )
