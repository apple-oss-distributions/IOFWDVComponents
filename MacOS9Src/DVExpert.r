/*
	File:		DVExpert.r

	Contains:	Resources for DVExpert.

	Version:	

	Written by:	Steve Smith

	Copyright:	? 1996-1999 by Apple Computer, Inc., all rights reserved.

	File Ownership:

		DRI:				

		Other Contact:		

		Technology:			

	Writers:

		(SW)	Sean Williams
		(jkl)	Jay Lloyd
		(CLP)	Collin Pieper
		(CK)	Casey King
		(SS)	Steve Smith

	Change History (most recent first):

	  <DV19>	 12/7/99	jkl		Add another vendor ID for the wrong Sony cameras.
		<18>	 8/17/99	jkl		Changed FREF for gdfx to INIT.
		<17>	 8/17/99	jkl		Added registered string resource numbers for INIT strings.
		<16>	 8/11/99	jkl		Added CCI? resource.
		<15>	  8/9/99	jkl		Added more vendor ID's.
		<14>	  8/9/99	jkl		Added vendor ID and vendor name resources for default camera
									name matching.
	  <OX13>	 6/11/99	SW		MasterInterface integration.
		<12>	 4/16/99	jkl		Added final QT icons.
		<11>	  3/1/99	ck		Set the magic number so our deep icons show up.
		<10>	 1/27/99	ck		Final ICONs.
		 <9>	 1/22/99	ck		New and cooler QT ICONs. Using our rsrc # instead of theirs.
									Also this ICON will change pending review of the firewire ICON
									police.
		 <7>	10/15/98	jkl		Add ndrv fref for DV Enabler.
		 <6>	 3/18/98	GDW		Removed extra ICONs, and changed to reserved resource numbers.
		 <5>	 3/16/98	GDW		New ICONs.
		 <4>	  3/3/98	GDW		Added DVVers.h file.
		 <3>	11/24/97	SS		Added icon families to make it look pretty.
		 <2>	11/10/97	SS		Moved #defines for version info to the makefile.
		 <1>	 8/18/97	CLP		first checked in
		 <5>	 3/12/97	CK		bump vers to 1.0d8e1.
		 <4>	 2/19/97	SS		Updated to 1.0a2 FSL
		 <3>	 2/12/97	AW		Updated to 1.0d18 FSL
*/

#include "Types.r"
#include "CodeFragments.r"
#include "Finder.r"

#include "DVVers.h"

#define	kSupportResNumber		(-20757)

resource 'cfrg' (0)
{
	{
      kPowerPC,				/* Target machine's Architecture. */
      kFullLib,				/* This is not an update. */
	  kNoVersionNum,		/* Current version. */
	  kNoVersionNum,		/* Definition version. */
	  kDefaultStackSize,	/* Stack size of application. */
	  kNoAppSubFolder,		/* Not used here.  Can be the resource-id of an 'alis'
							   resource.  Used to provide additional location
							   to search for libraries. */
	  kIsLib,				/* This is an application (not a lib or drop-in). */
	  kOnDiskFlat,			/* This code fragment is on disk, in the data fork. */
	  kZeroOffset,			/* Offset of code into data fork. */
	  kWholeFork,			/* Code takes up all of data fork (can give a size). */
	  "DVExpert"			/* Name of library. */
	}
};


resource 'vers' (1)
{
	DVVersion,
	DVRevision,
	DVBuildStage,
	DVBuildNumber,
	verUS,
	DVShortVersionString,
	DVLongVersionString
};



resource 'BNDL' (128) {
	'dvfw',
	0,
	{	/* array TypeArray: 2 elements */
		/* [1] */
		'FREF',
		{	/* array IDArray: 2 elements */
			/* [1] */
			0, kSupportResNumber,
			1, -20758
		},
		/* [2] */
		'ICN#',
		{	/* array IDArray: 2 elements */
			/* [1] */
			0, kSupportResNumber,
			1, kSupportResNumber
		}
	}
};

resource 'FREF' (kSupportResNumber) {
	'INIT',
	0,
	""
};

resource 'FREF' (-20758) {
	'ndrv',
	0,
	""
};

data 'dvfw' (0, "Owner resource") {
	$"00"                                                 /* . */
};

data 'CCI?' (128)
{
	"QuickTime FireWire DV Support\n\n"
	"Allows applications to capture and export DV material,"
	" and control DV equipment over FireWire."
};

resource 'STR ' (-20774, purgeable)
{
	"GenericDriverFamily"
};


resource 'STR ' (-20775, purgeable)
{
	"GDFRegisterFSSpecExpert"
};


/* vendor ID to name matching resource, STR# to vnid */
resource 'STR#' ( -20775, "Vendor Names", purgeable)
{
	{
		"Canon",
		"JVC",
		"Panasonic",
		"Sharp",
		"Sony",
		"Sony",
	}
};

data 'vnid' (-20775, "Vendor IDs", purgeable) {
	$"00000006"		/* count of IDs is 6 */
	$"00000085"		/* Canon vendor ID */
	$"00008088"		/* JVC vendor ID */
	$"00008045"		/* Panasonic vendor ID */
	$"00000000"		/* Sharp vendor ID */
	$"00080046"		/* Sony vendor ID */
	$"00080146"		/* Sony vendor ID */
};

/* The rsrc number is a magic number */
resource 'icns' (-16455) {
	{	/* array elementArray: 10 elements */
		/* [1] */
		'ics#',
		$"63F8 8004 8084 8204 8206 A285 9AF9 C109"
		$"FE09 4C09 C40D 840E 840C 87FF 8007 7FFE"
		$"7FF8 FFFC FFFC FFFC FFFE FFFF FFFF FFFF"
		$"FFFF 7FFF FFFF FFFE FFFC FFFF FFFF 7FFE",
		/* [2] */
		'ics4',
		$"0EDC CCDE EEEE E001 EC0C CC0D 0000 CE00"
		$"D07D D7C0 D000 CE00 DC70 CC50 DC00 CE00"
		$"DCD0 C070 DC00 CEE0 DC7C C770 DCCC DE0E"
		$"E0C6 775C EDDD E0CE FEC0 00CD C002 D0CE"
		$"FADE EDBB C0B2 D0CE 0E0C DDCC 2200 DCCE"
		$"EE00 0D00 1200 DFCE EC00 0D00 0000 DFA0"
		$"E000 0D00 2200 DF00 E000 0DDD DDDD DFEE"
		$"ECCC CCCC CCCC CFEE 0EEA AAFF FFFF FEE1",
		/* [3] */
		'ics8',
		$"00FC FAF7 F6F7 81FC FCFC FCFC FC00 0004"
		$"FCF8 F54E 4E4E 0056 F500 0000 F6AC 0000"
		$"FA24 7878 5478 54F5 81F5 F5F5 F8AC 0000"
		$"FA4E 78F5 4F55 A82A 56F6 F5F5 F8AC 0000"
		$"FA4E 5400 2AF5 A22A F82B F5F5 F8AC AC00"
		$"FA2A A254 F672 A2F5 81F8 2BF6 56AC 00AC"
		$"FC00 54A8 A27E 7E55 FB81 FAFA FB00 F8AC"
		$"FFFC 2BF5 F5F5 F75D F700 0210 FAF5 F8AC"
		$"FFFD 81FB FBFA 5E33 0700 3310 FAF5 F8AC"
		$"00AC F5F7 81FA 2C08 1010 0000 FAF8 F8AC"
		$"FCAC 00F5 F5FA 0000 0A10 0000 FAFE F8AC"
		$"FCF8 F5F5 F5FA 0000 0000 0000 FAFE FD00"
		$"AC00 F5F5 F5FA 0000 1010 0000 FAFE 0000"
		$"AC00 F5F5 F5FA FAFA FAFA FAFA FAFE FCFC"
		$"ACF6 F8F8 F8F8 F8F8 F8F8 F8F8 F8FE FCFC"
		$"00AC FDFD FDFD FEFE FEFE FEFF FFFC FC04",
		/* [4] */
		'is32',
		$"0CFF 4B7B C2D6 B864 464E 4D4B 4947 80FF"
		$"0848 AFD5 948B ADF2 91E1 80FF 7FDD 3EFF"
		$"FF79 D65A 708E 6D97 EA6B E7E6 E5A4 3CFF"
		$"FF79 9873 F0A5 9244 DB91 D2E6 E5A4 3AFF"
		$"FF79 938C F1C6 DE44 D8A0 C6E4 E4A4 393B"
		$"FF79 C34B A7D4 7543 E769 AFCF D195 36FF"
		$"3B41 F1A4 3F48 5F62 A55A 6576 7A5B F3A4"
		$"3B01 4ACD EAE9 E8B4 84BB FFFF FE7A E1A4"
		$"3B00 2E63 535D 7990 B5E5 FCB5 FE7A E1A4"
		$"3BFF 3AE0 B161 7ADD ECFE FEFF FF09 7AA4"
		$"A43B 423F FFE4 E47A 80FF 08FE FFFF 7A1B"
		$"A43B 40A4 80E4 027A FFFD 81FF 187A 192A"
		$"FF3F FFE3 E3E2 7AFF FFFE FEFF FF7A 16FF"
		$"FF3C FFE3 E3E2 857A 0415 4444 3BDD 88A4"
		$"1213 4444 FF33 2F2A 2621 1D1A 1714 110E"
		$"0B44 44FF 0CFF 4B79 BDD3 B663 464E 4C4A"
		$"4948 80FF 0848 AAE7 CBB7 BDF2 91E1 80FF"
		$"7FDD 3FFF FF76 EAAC 8F9E 8398 EB6B E6E5"
		$"E6A4 3CFF FF76 D692 E4B6 A244 D792 D3E5"
		$"E5A4 3AFF FF76 C59A F2CB ED6E D2A1 C6E5"
		$"E4A4 383C FF76 D862 A9E3 B663 E26A AFCF"
		$"D195 37FF 3C40 F1AD 4167 7D50 A35C 687B"
		$"7C5F F3A4 3C01 4ACD EBE6 E3B2 76B6 FFE6"
		$"AA7C E1A4 3C00 2E63 535F 7376 8FD5 F28F"
		$"AA7C E1A4 3CFF 3AE0 B161 7CC7 D2AA AAFF"
		$"FA1B 7CA4 A43C 433F FFE4 E37C FFFF B2AA"
		$"FFFF 7C1B A43C 41A4 E5E3 E37C FFF8 81FF"
		$"187C 192B FF3F FFE3 E3E2 7CFF FFAA AAF6"
		$"FF7C 17FF FF3E FFE3 E2E2 857C 0415 4444"
		$"3BDD 88A4 1213 4444 FF34 302B 2723 1E1B"
		$"1815 120F 0C44 44FF 18FF 4B77 BACF AF62"
		$"464D 4C4A 4947 FFFF 4448 A9EF F6FA F6F6"
		$"8EE1 80FF 7FDD 3EFF FF74 F2F0 EAE7 EEF7"
		$"EF69 E7E6 E6A4 3CFF FF74 FAEE E7D0 DBF4"
		$"FF8A D3E5 E5A4 39FF FF74 FDF4 F1E4 E3EB"
		$"FF98 C6E5 E5A4 383B FF74 FEF7 E6DE E0EF"
		$"F866 B0CF D195 36FF 3B40 ECFC F2ED F0E9"
		$"C357 697F 7C62 F2A4 3B01 49C6 F5FE E5B4"
		$"64AE FFAB 207C E1A4 3B00 2E63 505D 6748"
		$"50BC E050 207C E1A4 3BFF 3AE0 B261 7CA3"
		$"A520 20FF E315 7CA4 A43B 423F FFE4 E47C"
		$"FFFF 3220 FFFF 7C1A A43B 40A4 80E4 027C"
		$"FFF1 81FF 187C 182A FF3E FFE4 E3E3 7CFF"
		$"FF20 20E1 FF7C 17FF FF3D FFE3 E3E2 857C"
		$"0415 443C 3ADD 88A4 0F13 4444 FF34 2F2A"
		$"2722 1F1B 1715 110E 0B80 44",
		/* [5] */
		's8mk',
		$"00FF FFFF FFFF FFFF FFFF FFFF FF00 0000"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF 0000"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF 0000"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF 0000"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FF00"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"B2FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"28FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"02FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"00FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FF00"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF 0000"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF 8934"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF 7111"
		$"00FF FFFF FFFF FFFF FFFF FFFF FF88 2C00",
		/* [6] */
		'ICN#',
		$"0C10 0030 3000 0018 6000 0008 C020 0008"
		$"81D0 0008 8608 0008 0038 0008 084C 0008"
		$"080C 000F 080C 000F 0808 000D 8E08 8009"
		$"87BC FFC1 83CD 0041 C002 0041 F004 0041"
		$"F43A 0041 F0E4 0041 E040 0041 E040 0041"
		$"E040 0049 E040 004D 6040 004F 0040 004B"
		$"0040 004A 0040 0048 0040 004C 0040 004F"
		$"807F FFCF 8000 001F C000 003F FFFF FFFF"
		$"0FFF FFF0 3FFF FFF8 7FFF FFF8 FFFF FFF8"
		$"FFFF FFF8 FFFF FFF8 FFFF FFF8 FFFF FFF8"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF 7FFF FFFF 3FFF FFFF"
		$"1FFF FFFF 9FFF FFFF DFFF FFFF FFFF FFFF"
		$"FFFF FFFE FFFF FFF8 FFFF FFF8 FFFF FFF8"
		$"FFFF FFF8 FFFF FFF8 FFFF FFF8 7FFF FFF0",
		/* [7] */
		'icl4',
		$"0000 EEDD CDDD DDDD DDDD DDDD DDEF 0000"
		$"00FE DC00 000C CC00 0000 0000 00CD F000"
		$"0FDC 00CC CC00 0CDC CCCC CCCC CCCC A000"
		$"FEC0 C777 777C 00CD CCCC CCCC CCCC E000"
		$"ED0C 7777 7777 D00C CCCC CCCC CCCC E000"
		$"EC07 77DC CCD0 6C0C DCCC CCCC CCCC E000"
		$"D0C7 7D00 0CD7 6D00 DCCC CCCC CCCC E000"
		$"D0C7 5C0C D5CC 6500 DCCC CCCC CCCC E000"
		$"C0C7 500C DC0C 7500 CDCC CCCC CCCC EEEE"
		$"D007 7C00 C00C 7500 DDCC CCCC CCCC EEEE"
		$"D007 7D00 00C7 7D00 DDCC CCCC CCCC EE0E"
		$"EC0C 76DC CC77 6C0C DDCC CCCC CCCC A0CE"
		$"AC00 7666 7776 650D FFFF FFFF FFCC CCCE"
		$"FDC0 0C55 55DC 55CD DCCC CCCC CFCC CCCE"
		$"FFDC 0000 0000 0CDD CC00 0110 CFDC CCCE"
		$"FFFE DC00 000C DDDB C000 1221 CFDC CCDE"
		$"FFFD DDDD CDDB DDBB C00C 2221 CFDC CCDE"
		$"FFFD CDDD DFDB DBBC C000 C210 CFDC CCDE"
		$"FFFD CCCD DFDC BB0C 222C 0C00 CFDC CCDE"
		$"FFFD 0CCC CFCC C002 1111 0000 CFDC DCDE"
		$"FFFD 0CCC CFC0 0002 C0C2 C000 CFDC FDDE"
		$"FFFD 0CCC CFC0 0002 1111 C000 CFDC EFDE"
		$"DDAC 0CCC CFC0 000C 121C 0000 CFDD EEAE"
		$"D0C0 0CCC CFC0 0000 0000 0000 CFDD ECEE"
		$"D000 0CCC CFC0 0000 121C 0000 CFDC E0E0"
		$"D0CC CCCC CFC0 0000 0CC0 0000 CFDC E000"
		$"D0CC CCCC CFC0 0000 222C 0000 CFDC E000"
		$"D0CC CCCC CFCC CCCC CCCC CCCC CFDD E000"
		$"DCCC CCCC CFFF FFFF FFFF FFFF FFDD E000"
		$"ECCC CCCC CCCD DDDD DDDD DDDD DDDD F000"
		$"FEDC CCCC CCDD DDDD DDDD DDDD DDDA A000"
		$"FFFA AAAA AAAA AAAA AAAA AAAA AAFF 0000",
		/* [8] */
		'icl8',
		$"0000 0000 ACFB F956 F856 F9FA F956 5656"
		$"5656 5656 5656 5656 5656 FCFF 0000 0000"
		$"0000 FFFB 562B F500 0000 F52B F72B 0000"
		$"0000 0000 0000 0000 0000 F6FA FF00 0000"
		$"00FF 81F7 F500 F62A 2A2A 0000 F5F7 562B"
		$"F6F6 F6F6 F6F6 F6F6 F6F6 F6F7 FD00 0000"
		$"FFFB F700 F679 7272 7878 7E55 0000 F756"
		$"2BF6 F6F6 F6F6 F6F6 F6F6 F6F7 FC00 0000"
		$"AC56 F5F6 7972 787E 7E7E 787E 5500 F5F8"
		$"F82B F6F6 F6F6 F6F6 F6F6 F62B FC00 0000"
		$"FB2B 0079 727E 7F2B F655 7800 A84E 002B"
		$"F92B F6F6 F6F6 F6F6 F6F6 F62B FC00 0000"
		$"F9F5 F672 785B 0000 F579 7F7E D27E 00F5"
		$"F9F7 2BF6 F6F6 F6F6 F6F6 F62B FC00 0000"
		$"5600 2A72 7E2A 00F6 797F F64F CCA8 0000"
		$"56F8 2BF6 F6F6 F6F6 F6F6 F62B FC00 0000"
		$"F800 2A72 7EF5 004F 792A 004F A2A8 0000"
		$"F856 F7F6 F6F6 F6F6 F6F6 F62B FBFC FCFC"
		$"5600 2478 7E2A 00F5 F600 F54F A284 0000"
		$"5656 F7F6 F6F6 F6F6 F6F6 F6F6 FCAC FBFC"
		$"56F5 0078 7E54 F500 00F5 2B72 A254 00F5"
		$"F956 F72B F6F6 F6F6 F6F6 F6F6 FCAC 00AC"
		$"FB2B 0054 A2A8 7F4F 2B4F 729C A854 002B"
		$"8156 F72B 2B2B 2B2B 2B2B F6F6 FD00 F8AC"
		$"FDF8 F500 78A8 D2A8 A29C A2AE AF7E F5F9"
		$"EAFF F4F4 F4F4 F4F4 FFFF 2B2B F7F6 F8AC"
		$"FFF9 F700 F554 7EA8 A87E 7F55 847E F781"
		$"F9F8 F72B F6F6 F6F6 F8FF F82B F6F6 F8AC"
		$"FFFF F9F7 F500 00F5 F5F5 0000 F5F7 8156"
		$"F7F6 F500 0009 0A01 F6F4 56F7 2BF6 F8AC"
		$"FFFF FFFB 562B F500 0000 F52B F981 5757"
		$"2BF5 0000 0911 110A F6F4 56F7 2BF6 56AC"
		$"FFFF FF81 F9FA F956 F8F9 FA82 FA57 5F33"
		$"F600 0008 1111 110A F6F4 56F7 2BF6 56AC"
		$"FFFF FFFA F756 F9F9 FAFF FA57 573B 34F6"
		$"0701 0100 0911 0901 F6F4 56F7 2BF6 56AC"
		$"FFFF FFF9 F6F7 F856 56FF 5632 3434 F508"
		$"1011 1008 0008 0100 F6F4 56F7 2BF6 56AC"
		$"FFFF FFF9 F52B 2BF7 F7FF F7F6 07F5 0110"
		$"0A09 0A0A 0100 0000 F6F4 56F7 F9F6 56AC"
		$"FFFF FFF9 F5F6 F6F6 2BF4 2B00 0000 0111"
		$"0900 0911 0800 0000 F6F4 56F8 FEF9 F9AC"
		$"FFFF FF56 00F6 F6F6 2BF4 F600 0000 0110"
		$"0A09 0A0A 0800 0000 F6F4 56F8 ACFF F9AC"
		$"F9FA FDF7 00F6 F6F6 2BF4 F600 0000 0008"
		$"0A11 0A08 0200 0000 F6F4 5656 ACFC FDAC"
		$"56F5 2BF5 F5F6 F6F6 2BF4 F600 0000 0000"
		$"0102 0101 0100 0000 F6F4 5656 FC2B FBFC"
		$"F900 F5F5 F5F6 F6F6 2BF4 F600 0000 0001"
		$"0A11 0A08 0000 0000 F6F4 56F8 FC00 FC00"
		$"F9F5 F6F6 F6F6 F6F6 2BF4 F600 0000 0000"
		$"0108 0801 0000 0000 F6F4 56F8 FC00 0000"
		$"F9F5 F6F6 F6F6 F6F6 2BF4 F600 0000 0001"
		$"1011 1008 0000 0000 F6F4 56F8 FC00 0000"
		$"F9F5 F6F6 F6F6 F6F6 2BFF F8F6 F6F6 F6F6"
		$"F62C 2C2C F6F6 F6F6 F8FF 5656 FC00 0000"
		$"FAF6 F6F6 F6F6 F6F6 2BFF FFF4 F4F4 F4F4"
		$"F4F4 F4F4 F4F4 F4F4 FFFF 56F9 AC00 0000"
		$"ACF7 2BF6 F6F6 F6F6 F62B F856 5656 5656"
		$"5656 5656 5656 5656 5656 5681 FE00 0000"
		$"FFFB F9F8 F8F8 F8F8 F8F8 5656 5656 5656"
		$"5656 5656 5656 5656 F9F9 81FD FD00 0000"
		$"FFFF FEFD FDFD FDFD FDFD FDFD FDFD FDFD"
		$"FDFD FDFD FDFD FDFD FDFD FEFE 0000 0000",
		/* [9] */
		'il32',
		$"81FF 0A3A 5D83 9FAA 9E89 7B86 9697 8898"
		$"0146 0083 FF0E 0054 9DCD E6F3 F9F3 E6CD"
		$"B6C5 F6FC FE85 FF03 F8DA 7600 81FF 1000"
		$"64BE ECF5 D9BD BDCF F4FA ECBE 95CF D6D9"
		$"83DA 04DC DDDE B229 80FF 1200 54BE F3DD"
		$"7250 5758 5456 96FB F3BE 94CD D6D9 83DA"
		$"03D8 DCBD 4580 FF12 379D ECDD 5457 5558"
		$"5E5F 6257 8BFC ECA0 A9CF D784 DA02 DCC2"
		$"4980 FF13 5ACD FA6E 5A52 7CC6 DDA4 7EFE"
		$"34AF FACD 88C3 D2D9 84DA 01C0 4780 FF13"
		$"83E6 D35E 5687 F9FF E87D 6363 1C73 FFE6"
		$"8BB5 CBD7 84DA 01C0 4780 FF13 9CF3 BB5B"
		$"52D4 FFD0 7053 D4A6 1D4D FFF3 9DA8 C5D5"
		$"84DA 01C0 4A80 FF13 A9F9 BD5C 59EC FFAD"
		$"7AC6 FFAE 2E44 FFF9 AA9E BED2 84DA 18C5"
		$"5844 4044 95F3 CF5A 57D4 FFEA D2FF F28B"
		$"2F53 FFF3 9C98 BAD0 84DA 18D3 403D 5040"
		$"94E6 F15C 5082 EDFF FFF3 B160 2F88 FFE6"
		$"8296 B9CF 84DA 18DD 4031 F13B 50CD FA96"
		$"4837 68AA B08D 633A 2EAB FACD 6C90 B0C4"
		$"82CE 19CF D1D8 2BF1 A637 23A8 ECFB 7E2E"
		$"152B 3D3C 362A 2465 EC81 0D07 0882 091B"
		$"0702 C1CE B5D8 AA37 008B BDF3 EF9E 5B41"
		$"4050 7E9A 5964 BD67 86A3 BECE 81D3 1BAD"
		$"07A9 C1D0 D8A6 3700 0083 BDEC FBF5 E3E0"
		$"EBFB FAEC BE75 94B1 D2EC FA81 FD07 D309"
		$"99BA CDD8 A237 8000 105B 9ACD E6F3 F9F3"
		$"E6CD 9871 90A7 C5E2 F4FC 81FD 07D3 0991"
		$"B5CC D89F 3780 000F 6D8E 7080 9AA9 8D7D"
		$"737D 94A7 C1DC F0FA 82FD 07D3 0991 B5CC"
		$"D89B 3780 000F 7CBB 988A 8277 057A 97A1"
		$"B1C5 DCEE F8FC 82FD 07D3 0991 B5CC D897"
		$"3780 000E 87D6 B5A8 9E90 0693 B8C3 D2E2"
		$"F0F8 FC83 FD07 D309 91B5 CCD8 9437 8000"
		$"0D8C E7CB C5BE B008 B4DC E4EC F4FA FC84"
		$"FD07 D309 91B5 89D8 9137 8000 0B8F EED7"
		$"D5D2 C409 C9F4 F7FA FC86 FD07 D309 91AF"
		$"1A8C 8D37 8000 0198 F080 DA02 CE09 D38A"
		$"FD0C D309 91A5 3C00 8937 8077 29BE F280"
		$"DA02 CE09 D38A FD0C D309 919F 3C4B 2B38"
		$"98EC CEEC EB80 DA02 CE09 D38A FD0C D309"
		$"919F 40C2 5844 8FF6 E6E8 E080 DA02 CE09"
		$"D38A FD09 D309 91A0 42FF 48FF 8EEF 83DA"
		$"02CE 09D3 8AFD 04D3 0991 A043 80FF 018E"
		$"EF83 DA02 CE09 D38A FD04 D309 91A0 4380"
		$"FF02 8CED D882 DA02 CE07 AD8A D304 AD07"
		$"909B 4280 FF03 73DE D8D8 81DA 02CF 0207"
		$"8A09 0407 0293 8D34 80FF 0435 B6CF D7D8"
		$"80DA 03D1 C1A9 9989 9104 9093 906A 1E80"
		$"FF03 0058 8DA5 81AF 03AC A59B 9589 9104"
		$"8F80 602C 2480 FF04 0000 1A2B 2F81 2E02"
		$"2D2C 2C8A 2B02 2210 1F81 FF81 FF0A 3A5D"
		$"839F AA9E 897B 8696 9788 9801 4600 83FF"
		$"0E00 549D CDE6 F3F9 F3E6 CDB6 C5F6 FCFE"
		$"85FF 03F8 DA76 0081 FF10 0064 BEEC F3DC"
		$"CDCC D5F4 FAEC BE95 CFD6 D983 DA04 DCDD"
		$"DEB2 2980 FF12 0054 BEF3 DFA8 B4BB AB91"
		$"779D FBF3 BE94 CDD6 D983 DA03 D8DC BD45"
		$"80FF 1237 9DEC DFAB D18F 6C6C 7684 6C8E"
		$"FCEC A0A9 CFD7 84DA 02DC C249 80FF 135A"
		$"CDFA ABD6 6C6C BDD7 A88F FE38 B2FA CD88"
		$"C3D2 D984 DA01 C047 80FF 1383 E6DC CF8C"
		$"75F7 FFEC A37B 6713 70FF E68B B5CB D784"
		$"DA01 C047 80FF 139C F3D7 CC5B CCFF D68F"
		$"6ED0 C226 3CFF F39D A8C5 D584 DA01 C04A"
		$"80FF 13A9 F9DC BA59 E6FF BD8D C8FF D060"
		$"35FF F9AA 9EBE D284 DA18 C558 4440 4495"
		$"F3E0 AC61 CFFF EEDB FFEB C376 4AFF F39C"
		$"98BA D084 DA18 D340 3D50 4094 E6F4 9A6C"
		$"81EC FFFF EAC5 CC64 82FF E682 96B9 CF84"
		$"DA18 DD40 31F1 3C50 CDFA AD6B 4070 B8C1"
		$"B4C8 8C23 ADFA CD6C 90B0 C482 CE1A CFD1"
		$"D82B F1A6 3723 A8EC FB93 3710 3F76 8C74"
		$"1D00 58EC 8111 0B0D 0E81 0F1B 0B04 C1CE"
		$"B5D8 A937 008B BDF3 F1A7 5A36 3E55 7F9E"
		$"4F5A BD67 86A3 BECE 81D3 27AD 0CA9 C1D0"
		$"D8A6 3700 0083 BDEC FBF7 E7E3 EEFB FAEC"
		$"BD6D 91B1 D2EC FAF8 BEB6 EED3 0F99 BACD"
		$"D8A2 3780 001C 5B9A CDE6 F3F9 F3E6 CD8F"
		$"6B83 86C5 E2F4 F3C2 9D95 B6D3 0F91 B5CC"
		$"D89F 3780 001C 6D8E 7080 9AA9 8E7D 5873"
		$"8A6F 97DC F0FA DAA1 9A9E B9D3 0F91 B5CC"
		$"D89B 3780 001C 7CBB 988A 8277 097A 8093"
		$"7697 DCDD E5EA FDCD A1BD ECD3 0F91 B5CC"
		$"D897 3780 001C 87D6 B5A8 9E90 0A93 AB95"
		$"9EE2 D3AC 9DAF DDFB D2E9 FDD3 0F91 B5CC"
		$"D894 3780 001C 8CE7 CBC5 BEB0 0DB4 DCDA"
		$"EAE6 ACB3 C0B4 B0E6 F6FD FDD3 0F91 B588"
		$"D890 3780 001C 8FEE D7D5 D2C4 0EC9 F4F7"
		$"FAE9 9CC8 FDC8 A0D5 FAFD FDD3 0F91 AF1A"
		$"8C8D 3780 0001 98F0 80DA 02CE 0FD3 80FD"
		$"16EC AFB4 C0B4 B3D9 F9FD FDD3 0F91 A53C"
		$"0089 3780 7729 BEF2 80DA 02CE 0FD3 80FD"
		$"16F8 DBB0 A0B3 D5E0 F8FD FDD3 0F91 9F3C"
		$"4B2B 3898 ECCE ECEB 80DA 02CE 0FD3 82FD"
		$"14ED E0E2 E4F1 FBFD FDD3 0F91 9F40 C258"
		$"448F F6E6 E8E0 80DA 02CE 0FD3 81FD 05E9"
		$"B2A4 B2D7 F980 FD09 D30F 91A0 42FF 48FF"
		$"8EEF 83DA 02CE 0FD3 81FD 05FA EADB DEE1"
		$"F680 FD04 D30F 91A0 4380 FF01 8EEF 83DA"
		$"02CE 0FD3 81FD 05E8 AC9E ADD6 F980 FD04"
		$"D30F 91A0 4380 FF02 8CED D882 DA02 CE0C"
		$"AD82 D303 D0C3 C6C7 81D3 04AD 0C90 9B42"
		$"80FF 0373 DED8 D881 DA02 CF04 0B82 0F82"
		$"0E80 0F04 0B04 938D 3480 FF04 35B6 CFD7"
		$"D880 DA03 D1C1 A999 8991 0490 9390 6A1E"
		$"80FF 0300 588D A581 AF03 ACA5 9B95 8991"
		$"048F 8060 2C24 80FF 0400 001A 2B2F 812E"
		$"022D 2C2C 8A2B 0222 101F 81FF 81FF 0A3A"
		$"5D83 9FAA 9E89 7B86 9697 8898 0146 0083"
		$"FF0E 0054 9DCD E6F3 F9F3 E6CD B6C5 F6FC"
		$"FE85 FF03 F8DA 7600 81FF 1000 64BE ECF4"
		$"E9E3 E5E9 F7FA ECBE 95CF D6D9 83DA 04DC"
		$"DDDE B229 80FF 1200 54BE F3E7 D1EB FFFF"
		$"F7E2 D8FB F3BE 94CD D6D9 83DA 03D8 DCBD"
		$"4580 FF12 379D ECE6 DCFF FEEC ECFA FFF6"
		$"DFFB ECA0 A9CF D784 DA02 DCC2 4980 FF13"
		$"5ACD FAD6 FFF2 D3D5 DED0 EAF7 F8EB FACD"
		$"88C3 D2D9 84DA 01C0 4780 FF13 83E6 EAF8"
		$"FAD3 EAFF E2C6 D7EA FFEF FFE6 8BB5 CBD7"
		$"84DA 01C0 4780 FF13 9CF3 E9FF F0E2 FFD4"
		$"BFDA DADF F9EC FFF3 9DA8 C5D5 84DA 01C0"
		$"4A80 FF13 A9F9 ECFF EFEF FDD5 CDE1 F3D6"
		$"F3EC FFF9 AA9E BED2 84DA 18C5 5844 4050"
		$"95F3 F1FF F7EC FFF8 E9FB E9CF FCE9 FFF3"
		$"9C98 BAD0 84DA 18D3 503D 5250 94E6 F9F5"
		$"FFE5 E6F6 F8E7 C5E7 FFE3 FFE6 8296 B9CF"
		$"84DA 18DD 5030 F144 50CD FAE8 FDFA DBCC"
		$"C6C2 E2FC EBE4 FACD 6C90 B0C4 82CE 1ACF"
		$"D1D8 2BF1 A736 23A8 ECFB EAFA FFED E6F7"
		$"FFE6 C8E5 EC81 130D 1011 8112 1B0E 05C1"
		$"CEB5 D8AB 3600 8BBD F3EE E2EC F5F7 F1DE"
		$"DBE5 E4BD 6786 A3BE CE81 D327 AD0E A9C1"
		$"D0D8 A836 0000 83BD ECF9 F8F6 F5F4 F8F9"
		$"ECBD 608C B1D2 ECFA EF54 3FD6 D312 99BA"
		$"CDD8 A336 8000 1C5B 9ACD E6F3 F9F3 E6CD"
		$"8161 6E50 C5E2 F4E4 6000 003F D312 91B5"
		$"CCD8 9F36 8000 1C6D 8E70 809A A98E 7C2D"
		$"647B 1252 DCF0 FAA0 0900 0745 D312 91B5"
		$"CCD8 9C36 8000 1C7C BB98 8A82 770A 7A5A"
		$"7E14 4BDB C1C5 CCFD 7E13 51CD D312 91B5"
		$"CCD8 9836 8000 1C87 D6B5 A89E 900C 9396"
		$"4947 E2A3 2B05 2CAA F786 C6FD D312 91B5"
		$"CCD8 9536 8000 1C8C E7CB C5BE B00F B4DC"
		$"C9E7 CD2B 3D66 3D2F BFE8 FDFD D312 91B5"
		$"89D8 9136 8000 1C8F EED7 D5D2 C411 C9F4"
		$"F7FA C800 71FD 7104 91F7 FDFD D312 91AF"
		$"198B 8C36 8000 0198 F080 DA02 CE12 D380"
		$"FD16 CE2C 3D66 3C38 9DF2 FDFD D312 91A5"
		$"4C00 8936 8077 29BE F280 DA02 CE12 D380"
		$"FD16 F0A5 2F0C 3991 AFEE FDFD D312 919F"
		$"4C4B 2A37 98EC CEEC EB80 DA02 CE12 D381"
		$"FD15 FCD1 AEB6 BBDE F9FD FDD3 1291 9F40"
		$"C258 448F F6E6 E8E0 80DA 02CE 12D3 81FD"
		$"05CA 351B 3597 F280 FD09 D312 91A0 42FF"
		$"48FF 8EEF 83DA 02CE 12D3 81FD 05F6 C9A2"
		$"ABB3 EC80 FD04 D312 91A0 4380 FF01 8EEF"
		$"83DA 02CE 12D3 81FD 05C5 240C 2994 F180"
		$"FD04 D312 91A0 4380 FF02 8CED D882 DA02"
		$"CE0E AD82 D304 B895 9C9E CE80 D304 AD0E"
		$"909B 4280 FF03 73DE D8D8 81DA 02CF 050E"
		$"8312 8011 8112 040E 0593 8D34 80FF 0435"
		$"B6CF D7D8 80DA 03D1 C1A9 9989 9104 9093"
		$"906A 1E80 FF03 0058 8DA5 81AF 03AC A59B"
		$"9589 9104 8F80 602C 2480 FF04 0000 1A2B"
		$"2F81 2E02 2D2C 2C8A 2B02 2210 1F81 FF",
		/* [10] */
		'l8mk',
		$"0000 0000 2974 B2ED FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF B860 0000 0000"
		$"0000 016A D0FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFF8 6000 0000"
		$"0001 80FD FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF B800 0000"
		$"016B FDFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
		$"2BD0 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
		$"77FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
		$"DCFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF40 9F40"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFBF FFDF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"86FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"44E1 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"19A8 FEFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"112B B8FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"091B 38FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"030D 21FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0105 0FFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0001 05FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 01FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 00FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FF00 00FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF 00FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFDF FFDF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFBF BF40"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF20 2000"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
		$"B8FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF E400 0000"
		$"60F8 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFD D000 0000"
		$"0060 B8FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF BBD6 0000 0000"
	}
};

resource 'ICN#' (kSupportResNumber) {
	{	/* array: 2 elements */
		/* [1] */
		$"03F7 FFE0 0C18 0010 3006 0008 23E2 0008"
		$"47F1 0008 4E29 0008 9C7C 8008 98EC 8008"
		$"98CC 8008 980C 800B 9C18 800D 4E39 0009"
		$"47FD FFC1 23CA 0041 3006 0441 1C18 0E41"
		$"17F3 1F41 1046 0E41 104C E441 1041 B041"
		$"1041 1049 9041 B04D D040 E04B B040 0048"
		$"8040 E048 8040 0048 8040 E048 8040 0048"
		$"807F FFC8 8000 0008 4000 0018 3FFF FFF0",
		/* [2] */
		$"03F7 FFE0 0FFF FFF0 3FFF FFF8 3FFF FFF8"
		$"7FFF FFF8 7FFF FFF8 FFFF FFF8 FFFF FFF8"
		$"FFFF FFF8 FFFF FFFB FFFF FFFF 7FFF FFFF"
		$"7FFF FFFF 3FFF FFFF 3FFF FFFF 1FFF FFFF"
		$"1FFF FFFF 1FFF FFFF 1FFF FFFF 1FFF FFFF"
		$"1FFF FFFF 9FFF FFFF DFFF FFFB FFFF FFF8"
		$"FFFF FFF8 FFFF FFF8 FFFF FFF8 FFFF FFF8"
		$"FFFF FFF8 FFFF FFF8 7FFF FFF8 3FFF FFF0"
	}
};

resource 'icl4' (kSupportResNumber) {
	$"0000 0CCC CDDD DDDD DDDD DDDD DDD0 0000"
	$"000C CC00 000C CC00 0000 0000 00CD 0000"
	$"00CC 00CC CC00 0CCC CCCC CCCC CCCC D000"
	$"0CC0 CD77 777C 00CD CCCC CCCC CCCC E000"
	$"0C0C D777 7777 C00C CCCC CCCC CCCC E000"
	$"CC0D 77DC CC70 6C0C DCCC CCCC CCCC E000"
	$"C0C7 7D00 0DD7 6700 DCCC CCCC CCCC E000"
	$"C0C7 7C0C DDCC 6600 DCCC CCCC CCCC E000"
	$"C0C7 700C DC0C 7600 DCCC CCCC CCCC E0D0"
	$"C0C7 7C00 C00C 7500 DCCC CCCC CCCC EDEE"
	$"C007 7C00 00C7 7C00 DCCC CCCC CCCC EE0E"
	$"CC0C 76DC CC77 6C0C DCCC CCCC CCCC A0CE"
	$"0C00 7666 7776 5D0D FFFF FFFF FFCC CCCE"
	$"0CC0 0C76 66CC 57CD DCCC CCCC CFDC CCCE"
	$"00CC 0000 0000 0CDD CC00 0020 CFDC CCCE"
	$"000E DC00 00CC DDDB C000 0222 CFDC CCCE"
	$"000D DDDD CDDE BDBD C000 2220 CFDC CCCE"
	$"000D CCDD DFDD D2D0 0000 0200 CFDC CCCE"
	$"000D CCCC CFD0 BB0C 222C 0000 CFDC CCCE"
	$"000D 0CCC CFC0 0002 2C22 0000 CFDC DCCE"
	$"000D 0CCC CFC0 0002 C0C2 0000 CFDC FDCE"
	$"F00D 0CCC CFC0 0002 2C22 0000 CFDC EFDE"
	$"DD0C 0CCC CFC0 000C 222C 0000 CFDC EDAE"
	$"D0C0 0CCC CFC0 0000 0000 0000 CFDC E0D0"
	$"D000 0CCC CFC0 0000 2220 0000 CFDC E000"
	$"D0CC CCCC CFC0 0000 0000 0000 CFDC E000"
	$"D0CC CCCC CFC0 0000 2220 0000 CFDC E000"
	$"D0CC CCCC CFCC CCCC CCCC CCCC CFDC E000"
	$"DCCC CCCC CFFF FFFF FFFF FFFF FFDC E000"
	$"DCCC CCCC CCCC CCCC CCCC CCCC CDDD E000"
	$"0EDD DDDD DDDD DDDD DDDD DDDD DDDA E000"
	$"00EA AAAA AAAA AAAA AAAA AAAA AAEE"
};

resource 'icl8' (kSupportResNumber) {
	$"0000 0000 00F7 F8F8 F8F9 F9FA FAFA FAFA"
	$"FAFA FAFA FAFA FAFA FAFA FA00 0000 0000"
	$"0000 00F7 F82B F500 0000 F52B F72B 0000"
	$"0000 0000 0000 0000 0000 F6FA 0000 0000"
	$"0000 F7F7 F500 F62A 2A2A 0000 F5F7 F8F6"
	$"F6F6 F6F6 F6F6 F6F6 F6F6 F6F7 8100 0000"
	$"00F7 F700 F679 7272 7878 7E55 0000 F7F9"
	$"2BF6 F6F6 F6F6 F6F6 F6F6 F6F7 FC00 0000"
	$"00F8 F5F6 7972 787E 7E7E 787E 5500 F5F8"
	$"F8F6 F6F6 F6F6 F6F6 F6F6 F62B FC00 0000"
	$"F72B 0079 727E 7F2B F64F 7800 A82A 002B"
	$"F92B F6F6 F6F6 F6F6 F6F6 F62B FC00 0000"
	$"F8F5 F672 785B 0000 F579 7F7E D27E 00F5"
	$"F9F7 2BF6 F6F6 F6F6 F6F6 F62B FC00 0000"
	$"F800 2A72 7E2A 00F6 797F F64F CCA8 0000"
	$"F9F8 2BF6 F6F6 F6F6 F6F6 F62B FC00 0000"
	$"F800 2A72 7EF5 004F 792A 004F A2A8 0000"
	$"F9F8 F7F6 F6F6 F6F6 F6F6 F62B FB00 F900"
	$"F800 2A78 7E2A 00F5 F600 F54F A284 0000"
	$"F9F8 F7F6 F6F6 F6F6 F6F6 F6F6 FC81 FBFB"
	$"F8F5 0078 7E54 F500 00F5 4F72 A254 00F5"
	$"F9F8 F7F6 F6F6 F6F6 F6F6 F6F6 FCAC 00AC"
	$"F82B 0054 A2A8 7F4F 4F4F 729C A82A 002B"
	$"81F8 F72B 2B2B 2B2B 2BF6 F6F6 FD00 F8AC"
	$"00F7 F500 78A8 D2A8 A29C A2A8 AF7F F5FA"
	$"FEF4 EAF4 FEEA F4EA F4FF 2B2B F7F6 F8AC"
	$"00F7 F700 F554 7EA8 A8A8 5555 A97E F781"
	$"F9F8 2BF6 2BF6 F6F6 F8EA F92B F6F6 F8AC"
	$"0000 F8F7 F500 00F5 F500 F500 00F8 8156"
	$"F82B F500 0000 10F5 F8F4 F9F7 2BF6 F8AC"
	$"0000 00FB F92B F500 0000 F6F6 5781 5769"
	$"2BF5 F501 0011 1110 F8EA F9F7 2BF6 F8AC"
	$"0000 0081 F9FA F9F9 F8F9 FA88 5D56 6933"
	$"F6F5 0000 1111 1100 F8E0 F9F7 2BF6 F8AC"
	$"0000 00FA F7F8 F9F9 FAFF FA57 F969 3300"
	$"0001 0000 0011 0001 F8EA F9F7 2BF6 F8AC"
	$"0000 00F9 F6F7 F8F8 F8F4 5600 3333 F5F6"
	$"1111 11F6 0000 0000 F8F3 F9F7 2BF6 F8AC"
	$"0000 00F9 F52B 2BF7 F7FF F700 0000 F511"
	$"10F6 1111 F500 0000 F8EA F9F7 F9F6 F8AC"
	$"0000 00F9 F5F6 F6F6 2BEA 2B00 0000 F511"
	$"F600 F611 F500 0000 F8FE F9F8 FEF9 F8AC"
	$"FF00 00F9 F5F6 F6F6 2BFE 2B00 0000 F510"
	$"10F6 1111 F500 0000 F8EA F9F8 ACFF F9AC"
	$"F9FA 00F7 00F6 F6F6 2BF4 F600 0000 00F6"
	$"1111 11F6 0000 0000 F8F3 F9F8 AC81 FDFB"
	$"F9F5 2BF5 F5F6 F6F6 2BEA 2B00 0000 0000"
	$"F5F5 F500 0000 0000 F8FE F9F8 FC00 F900"
	$"F900 F5F5 F5F6 F6F6 2BFE F600 0000 0000"
	$"1111 1100 0000 0000 F8EA F9F8 FC00 0000"
	$"F9F5 F6F6 F6F6 F6F6 2BF4 2B00 0000 0000"
	$"0000 0000 0000 0000 F8F4 F9F8 FC00 0000"
	$"F9F5 F6F6 F6F6 F6F6 2BEA F600 0000 0000"
	$"1111 1100 0000 0000 F8EA F9F8 FC00 0000"
	$"F9F5 F6F6 F6F6 F6F6 2BF4 F8F8 F8F8 F8F8"
	$"F8F8 F8F8 F8F8 F8F8 F8EA F9F8 FC00 0000"
	$"FAF6 F6F6 F6F6 F6F6 F6FF F4EA F3EA EAEA"
	$"EAEA EAF4 FFEA F4EA F4F4 F9F8 FC00 0000"
	$"81F7 F6F6 F6F6 F6F6 F62B F8F8 F8F8 F8F8"
	$"F8F8 F8F8 F8F8 F8F8 F8F9 F981 FC00 0000"
	$"00FB F9F9 F9F9 F9F9 F9F9 F9F9 F9F9 F9F9"
	$"F9F9 F9F9 F9F9 F9F9 F9F9 81FD FC00 0000"
	$"0000 FBFD FDFD FDFD FDFD FDFD FDFD FDFD"
	$"FDFD FDFD FDFD FDFD FDFD FBFC"
};

resource 'ics4' (kSupportResNumber) {
	$"0EDC CCEE EEEE E000 EC0C 7C0C 0000 0E00"
	$"D077 C7C0 D00C CE00 E770 C66C DCC0 CE00"
	$"EC70 6070 DCC0 DEE0 EC6C C760 DCCC DE0E"
	$"D0C6 677C EDDD DDCE 0AC0 00CB C022 DEDE"
	$"0EDD EDBD C022 DEDE 0E0C DDCC 2200 DEDE"
	$"EE00 DD00 2200 DFCE ED0C DD00 0000 DFA0"
	$"E0C0 DD00 2200 DF00 E00C DDDD DDDD DF00"
	$"ECDC DEEE EEEE EF00 0EEA AAAF FFFF F0"
};

resource 'ics8' (kSupportResNumber) {
	$"00FC 81F8 2BF8 FCFC FBFC FCFC FC00 0000"
	$"FBF8 244E 784E 00F8 F500 0000 F5AC 0000"
	$"8100 9CA2 54A2 54F5 F9F5 F5F6 F8AC 0000"
	$"FB72 7E01 4FA8 D22A 562B F6F5 F8AC 0000"
	$"FB4E 7800 CC01 C606 562B F6F5 56AC FC00"
	$"FB4E A854 2578 CC00 81F8 2B2B 56AC 00AC"
	$"5600 54D2 A87E 7E55 FB81 FAFA 81FA F8AC"
	$"F5FD 2B00 F501 F85D 2C00 1010 FAFB 56FC"
	$"00AC 5681 FB81 5E57 07F5 1010 FAFB 56AC"
	$"00AC F52B FAFA 2B08 1010 0000 FAFC 56AC"
	$"FCFC 00F5 F9FA 0000 1010 0000 FAFF F8AC"
	$"FC56 F5F6 56FA 0000 0000 0000 FAE0 FD00"
	$"AC00 F6F5 F9FA 0000 1110 0100 FAFE F500"
	$"FC00 F5F6 F9F9 FAFA F9FA FAF9 FAFF 0000"
	$"ACF6 56F8 F9AC FCAC ACAC ACAC ACEA 0000"
	$"00AC ACFD FDFD FDFE FEFE FEEA FF"
};

resource 'ics#' (kSupportResNumber) {
	{	/* array: 2 elements */
		/* [1] */
		$"3FF8 4204 9904 AD04 A506 9F05 42FD 7D1D"
		$"432D 44CD C4CD 840E 84CC 87FC 800C 7FF8",
		/* [2] */
		$"7FF8 FFFC FFFC FFFC FFFE FFFF FFFF 7FFF"
		$"7FFF 7FFF FFFF FFFE FFFC FFFC FFFC 7FF8"
	}
};

resource kRoutingResourceType (kRoutingResourceID) {
	{
		0,						// Creator set to zero
		0,						// File type set to zero
		'macs',					// Target Folder
		'extn'					// Destination folder to route to
	}
};
