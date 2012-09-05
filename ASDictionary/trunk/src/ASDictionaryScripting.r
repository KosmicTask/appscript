#include <Carbon/Carbon.r>

#define Reserved8   reserved, reserved, reserved, reserved, reserved, reserved, reserved, reserved
#define Reserved12  Reserved8, reserved, reserved, reserved, reserved
#define Reserved13  Reserved12, reserved
#define dp_none__   noParams, "", directParamOptional, singleItem, notEnumerated, Reserved13
#define reply_none__   noReply, "", replyOptional, singleItem, notEnumerated, Reserved13
#define synonym_verb__ reply_none__, dp_none__, { }
#define plural__    "", {"", kAESpecialClassProperties, cType, "", reserved, singleItem, notEnumerated, readOnly, Reserved8, noApostrophe, notFeminine, notMasculine, plural}, {}

resource 'aete' (0, "ASDictionary Terminology") {
	0x1,  // major version
	0x0,  // minor version
	english,
	roman,
	{
		"Required Suite",
		"",
		'????',
		1,
		1,
		{
			/* Events */

			"run",
			"Run the application.",
			'aevt', 'oapp',
			reply_none__,
			dp_none__,
			{

			},

			"open",
			"Open one or more application and/or scripting addition files.",
			'aevt', 'odoc',
			reply_none__,
			'file',
			"The application and/or scripting addition source files to be opened.",
			directParamRequired,
			listOfItems, notEnumerated, Reserved13,
			{

			},

			"quit",
			"Quit the application.",
			'aevt', 'quit',
			reply_none__,
			dp_none__,
			{

			}
		},
		{
			/* Classes */

		},
		{
			/* Comparisons */
		},
		{
			/* Enumerations */
		},

		"ASDictionary Suite",
		"Export application and scripting addition dictionaries.",
		'????',
		1,
		1,
		{
			/* Events */

			"export",
			"Export application and/or scripting addition dictionaries as plain text and/or HTML files.",
			'ASDi', 'ExpD',
			'ExpR',
			"A list of records describing the outcome of each export operation.",
			replyRequired, listOfItems, notEnumerated, Reserved13,
			'file',
			"The application and/or scripting addition source files to be read.",
			directParamRequired,
			listOfItems, notEnumerated, Reserved13,
			{
				"to", 'ToFo', 'file',
				"The folder to export to.",
				required,
				singleItem, notEnumerated, Reserved13,
				"using file formats", 'Form', 'EFor',
				"The output format(s) to use. (Default: frame based HTML)",
				optional,
				listOfItems, notEnumerated, Reserved13,
				"using styles", 'Styl', 'ESty',
				"The terminology style(s) to use. (Default: AppleScript)",
				optional,
				listOfItems, notEnumerated, Reserved13,
				"compacting classes", 'ClaC', 'bool',
				"If two or more classes share the same name, should they be combined into one? (Default: false)",
				optional,
				singleItem, notEnumerated, Reserved13,
				"showing hidden items", 'SInv', 'bool',
				"Should hidden suites, commands, classes, etc. be shown? (Default: false)",
				optional,
				singleItem, notEnumerated, Reserved13,
				"exporting to subfolders", 'SubF', 'bool',
				"Should the exported dictionaries be grouped into subfolders according to style and file format? (Default: false)",
				optional,
				singleItem, notEnumerated, Reserved13
			}
		},
		{
			/* Classes */

			"export status", 'ExpR',
			"A record containing the result of a single export operation.",
			{
				"success", 'Succ', 'bool',
				"Was the dictionary successfully exported?",
				reserved, singleItem, notEnumerated, readWrite, Reserved12,

				"source", 'Sour', 'file',
				"The application or scripting addition source file.",
				reserved, singleItem, notEnumerated, readWrite, Reserved12,

				"destination", 'Dest', 'file',
				"The exported dictionary file/folder if the export succeeded, or 'missing value' if it failed.",
				reserved, singleItem, notEnumerated, readWrite, Reserved12,

				"error message", 'ErrS', 'TEXT',
				"An error description if the export failed, or 'missing value' if it succeeded.",
				reserved, singleItem, notEnumerated, readWrite, Reserved12
			},
			{
			},
			"", 'ExpR', plural__
		},
		{
			/* Comparisons */
		},
		{
			/* Enumerations */
			'EFor',
			{
				"plain text", 'PTex', "",
				"single file HTML", 'SHTM', "",
				"frame based HTML", 'FHTM', "",
				"ObjC appscript glue", 'OCGl', ""
			},

			'ESty',
			{
				"AppleScript", 'AScr', "",
				"Python appscript", 'PyAp', "",
				"Ruby appscript", 'RbAp', "",
				"ObjC appscript", 'OCAp', ""
			}
		}
	}
};
