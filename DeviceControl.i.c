/*
     File:       DeviceControl.i.c
 
     Contains:   Component API for doing AVC transactions.
 
     Version:    xxx put version here xxx
 
     DRI:        Jed (George) Wilson
 
     Copyright:  � 1999-2000 by Apple Computer, Inc., all rights reserved.
 
     BuildInfo:  Built by:            wgulland
                 On:                  Thu Sep 21 14:47:23 2000
                 With Interfacer:     3.0d20e4 (Mac OS X for PowerPC)
                 From:                DeviceControl.i
                     Revision:        3
                     Dated:           6/16/99
                     Last change by:  GDW
                     Last comment:    Changed AVC struct name to DVC for people that include
 
     Bugs:       Report bugs to Radar component "System Interfaces", "Latest"
                 List the version information (from above) in the Problem Description.
 
*/
#include <Carbon/Carbon.h>

//#include <MixedMode.h>
//#include <Components.h>
#include "DeviceControl.h"
#if MP_SUPPORT
	#include "MPMixedModeSupport.h"
#endif

#define TOOLBOX_TRAPADDRESS(trapNum) (*(((UniversalProcPtr*)(((trapNum & 0x03FF) << 2) + 0xE00))))
#define OS_TRAPADDRESS(trapNum)      (*(((UniversalProcPtr*)(((trapNum & 0x00FF) << 2) + 0x400))))

#ifndef TRAPGLUE_NO_COMPONENT_CALL
DEFINE_API( ComponentResult ) DeviceControlDoAVCTransaction(ComponentInstance instance, DVCTransactionParams* params)
{
	#if PRAGMA_STRUCT_ALIGN
	  #pragma options align=mac68k
	#elif PRAGMA_STRUCT_PACKPUSH
	  #pragma pack(push, 2)
	#elif PRAGMA_STRUCT_PACK
	  #pragma pack(2)
	#endif
	struct DeviceControlDoAVCTransactionGluePB {
		unsigned char                  componentFlags;
		unsigned char                  componentParamSize;
		short                          componentWhat;
		DVCTransactionParams*          params;
		ComponentInstance              instance;
	};
	#if PRAGMA_STRUCT_ALIGN
	  #pragma options align=reset
	#elif PRAGMA_STRUCT_PACKPUSH
	  #pragma pack(pop)
	#elif PRAGMA_STRUCT_PACK
	  #pragma pack()
	#endif

	#if OLD_COMPONENT_GLUE
	struct DeviceControlDoAVCTransactionGluePB myDeviceControlDoAVCTransactionGluePB = {
		0,
		4,
		1
	};

	#else
	struct DeviceControlDoAVCTransactionGluePB myDeviceControlDoAVCTransactionGluePB;
	*((unsigned long*)&myDeviceControlDoAVCTransactionGluePB) = 0x00040001;
	#endif

	myDeviceControlDoAVCTransactionGluePB.params = params;
	myDeviceControlDoAVCTransactionGluePB.instance = instance;

	#if TARGET_API_MAC_OS8
		return (ComponentResult)CallUniversalProc(CallComponentUPP, 0x000000F0, &myDeviceControlDoAVCTransactionGluePB);
	#else
		return (ComponentResult)CallComponentDispatch( (ComponentParameters*)&myDeviceControlDoAVCTransactionGluePB );
	#endif
}
#endif


