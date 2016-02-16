function abs_cutstr_s( global_str, sch )
{
	var temp_g_str = eval( global_str );

	if( !temp_g_str || !sch ) return "";

	var pos = temp_g_str.indexOf( sch );
	if( pos == -1 ) return "";
	
	temp_g_str = temp_g_str.substr( pos + sch.length );
	eval( global_str + " = temp_g_str;" );
	
	return temp_g_str;
}

function abs_cutstr_e( global_str, sch )
{
	var temp_g_str = eval( global_str );

	if( !temp_g_str || !sch ) return "";

	var pos = temp_g_str.indexOf( sch );
	if( pos == -1 ) return "";
	
	r_str = temp_g_str.substr( 0, pos );
	eval( global_str + " = temp_g_str.substr( pos + sch.length );" );
	
	return r_str;
}

function abs_cutstr( global_str, sch_s, sch_e )
{
	var temp_g_str = eval( global_str );

	if( !temp_g_str || !sch_s || !sch_e ) return "";

	if( temp_g_str.indexOf( sch_s ) == -1 || temp_g_str.indexOf( sch_e ) == -1 ) return "";
		
	abs_cutstr_s( global_str, sch_s );
	
	return abs_cutstr_e( global_str, sch_e );
}