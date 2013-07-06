//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules


void main(void)
{
	// M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	//Start RefMux Modules
	//RefMux_HIGHPOWER = 0x03
	RefHiMux_Start(0x03);
	RefLoMux_Start(0x03);
	RefAgndMux_Start(0x03);

}
