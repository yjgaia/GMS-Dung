function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // object_global
	global.__objectDepths[1] = 0; // object_game_controller
	global.__objectDepths[2] = 0; // object_title
	global.__objectDepths[3] = 0; // object_start_button
	global.__objectDepths[4] = 0; // object_man
	global.__objectDepths[5] = 0; // object_dung
	global.__objectDepths[6] = 0; // object_ranking
	global.__objectDepths[7] = 0; // object_save_ranking_button


	global.__objectNames[0] = "object_global";
	global.__objectNames[1] = "object_game_controller";
	global.__objectNames[2] = "object_title";
	global.__objectNames[3] = "object_start_button";
	global.__objectNames[4] = "object_man";
	global.__objectNames[5] = "object_dung";
	global.__objectNames[6] = "object_ranking";
	global.__objectNames[7] = "object_save_ranking_button";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
