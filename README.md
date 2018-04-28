# Chat Bot [![Download](https://img.shields.io/badge/Chat%20Bot-1.2-brightgreen.svg)](https://github.com/xpt1x/Chat-Bot/archive/master.zip)
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

- From v1.2 and above includes **BLOCKWORDS**<br>
 Words should be added in :<br>
``` cpp
new BlockWords[][] = 
``` 

## Settings within Source 
>#define DELAY 30.0 ( Time delay between Public Ad Messages )<br>
>#define PRINTDELAY 0.2 ( Time delay between Response from Server )<br>
>#define BLOCKWORDS ( Comment if you dont want to block any swearing / offensive words ) <br>
>#define HIDE_SLASH ( Comment if you dont want to Hide Slash ) <br>
>//#define PRINTTOALL ( Uncomment if you want Response to be visible for all players )
