{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 88.0, 55.0, 685.0, 773.0 ],
		"bglocked" : 0,
		"defrect" : [ 88.0, 55.0, 685.0, 773.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "o.io.gametrak.display.maxhelp\n\nAdrian Freed\nCNMAT 2011",
					"linecount" : 4,
					"patching_rect" : [ 336.0, 28.0, 214.0, 62.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-38",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gswitch",
					"patching_rect" : [ 123.0, 82.0, 41.0, 32.0 ],
					"int" : 1,
					"numinlets" : 3,
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 113.0, 470.0, 324.0, 298.0 ],
					"name" : "o.io.gametrak.display.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"args" : [  ],
					"id" : "obj-4",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.io.gametrak",
					"patching_rect" : [ 120.0, 39.0, 83.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 120.0, 119.0, 324.0, 298.0 ],
					"name" : "o.io.gametrak.display.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"args" : [  ],
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
