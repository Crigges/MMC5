//===========================================================================
// 
// Noch eine WARCRAFT-III-Karte
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Fri Oct 31 21:59:48 2014
//   Map Author: Unbekannt
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************

globals
endglobals

function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation( Player(0), 0 )
    call ForcePlayerStartLocation( Player(0), 0 )
    call SetPlayerColor( Player(0), ConvertPlayerColor(0) )
    call SetPlayerRacePreference( Player(0), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(0), false )
    call SetPlayerController( Player(0), MAP_CONTROL_USER )

    // Player 1
    call SetPlayerStartLocation( Player(1), 1 )
    call ForcePlayerStartLocation( Player(1), 1 )
    call SetPlayerColor( Player(1), ConvertPlayerColor(1) )
    call SetPlayerRacePreference( Player(1), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(1), false )
    call SetPlayerController( Player(1), MAP_CONTROL_USER )

    // Player 2
    call SetPlayerStartLocation( Player(2), 2 )
    call ForcePlayerStartLocation( Player(2), 2 )
    call SetPlayerColor( Player(2), ConvertPlayerColor(2) )
    call SetPlayerRacePreference( Player(2), RACE_PREF_UNDEAD )
    call SetPlayerRaceSelectable( Player(2), false )
    call SetPlayerController( Player(2), MAP_CONTROL_USER )

    // Player 3
    call SetPlayerStartLocation( Player(3), 3 )
    call ForcePlayerStartLocation( Player(3), 3 )
    call SetPlayerColor( Player(3), ConvertPlayerColor(3) )
    call SetPlayerRacePreference( Player(3), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(3), false )
    call SetPlayerController( Player(3), MAP_CONTROL_USER )

    // Player 4
    call SetPlayerStartLocation( Player(4), 4 )
    call ForcePlayerStartLocation( Player(4), 4 )
    call SetPlayerColor( Player(4), ConvertPlayerColor(4) )
    call SetPlayerRacePreference( Player(4), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(4), false )
    call SetPlayerController( Player(4), MAP_CONTROL_USER )

    // Player 5
    call SetPlayerStartLocation( Player(5), 5 )
    call ForcePlayerStartLocation( Player(5), 5 )
    call SetPlayerColor( Player(5), ConvertPlayerColor(5) )
    call SetPlayerRacePreference( Player(5), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(5), false )
    call SetPlayerController( Player(5), MAP_CONTROL_USER )

    // Player 6
    call SetPlayerStartLocation( Player(6), 6 )
    call ForcePlayerStartLocation( Player(6), 6 )
    call SetPlayerColor( Player(6), ConvertPlayerColor(6) )
    call SetPlayerRacePreference( Player(6), RACE_PREF_UNDEAD )
    call SetPlayerRaceSelectable( Player(6), false )
    call SetPlayerController( Player(6), MAP_CONTROL_USER )

    // Player 7
    call SetPlayerStartLocation( Player(7), 7 )
    call ForcePlayerStartLocation( Player(7), 7 )
    call SetPlayerColor( Player(7), ConvertPlayerColor(7) )
    call SetPlayerRacePreference( Player(7), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(7), false )
    call SetPlayerController( Player(7), MAP_CONTROL_USER )

    // Player 8
    call SetPlayerStartLocation( Player(8), 8 )
    call ForcePlayerStartLocation( Player(8), 8 )
    call SetPlayerColor( Player(8), ConvertPlayerColor(8) )
    call SetPlayerRacePreference( Player(8), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(8), false )
    call SetPlayerController( Player(8), MAP_CONTROL_USER )

    // Player 9
    call SetPlayerStartLocation( Player(9), 9 )
    call ForcePlayerStartLocation( Player(9), 9 )
    call SetPlayerColor( Player(9), ConvertPlayerColor(9) )
    call SetPlayerRacePreference( Player(9), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(9), false )
    call SetPlayerController( Player(9), MAP_CONTROL_USER )

    // Player 10
    call SetPlayerStartLocation( Player(10), 10 )
    call ForcePlayerStartLocation( Player(10), 10 )
    call SetPlayerColor( Player(10), ConvertPlayerColor(10) )
    call SetPlayerRacePreference( Player(10), RACE_PREF_UNDEAD )
    call SetPlayerRaceSelectable( Player(10), false )
    call SetPlayerController( Player(10), MAP_CONTROL_USER )

    // Player 11
    call SetPlayerStartLocation( Player(11), 11 )
    call ForcePlayerStartLocation( Player(11), 11 )
    call SetPlayerColor( Player(11), ConvertPlayerColor(11) )
    call SetPlayerRacePreference( Player(11), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(11), false )
    call SetPlayerController( Player(11), MAP_CONTROL_USER )

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_013
    call SetPlayerTeam( Player(0), 0 )
    call SetPlayerTeam( Player(1), 0 )
    call SetPlayerTeam( Player(2), 0 )
    call SetPlayerTeam( Player(3), 0 )
    call SetPlayerTeam( Player(4), 0 )
    call SetPlayerTeam( Player(5), 0 )
    call SetPlayerTeam( Player(6), 0 )
    call SetPlayerTeam( Player(7), 0 )
    call SetPlayerTeam( Player(8), 0 )
    call SetPlayerTeam( Player(9), 0 )
    call SetPlayerTeam( Player(10), 0 )
    call SetPlayerTeam( Player(11), 0 )

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount( 0, 4 )
    call SetStartLocPrio( 0, 0, 3, MAP_LOC_PRIO_LOW )
    call SetStartLocPrio( 0, 1, 7, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 0, 2, 9, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 0, 3, 11, MAP_LOC_PRIO_LOW )

    call SetStartLocPrioCount( 1, 4 )
    call SetStartLocPrio( 1, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 1, 1, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 1, 2, 4, MAP_LOC_PRIO_LOW )
    call SetStartLocPrio( 1, 3, 11, MAP_LOC_PRIO_LOW )

    call SetStartLocPrioCount( 2, 4 )
    call SetStartLocPrio( 2, 0, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 1, 4, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 2, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 3, 11, MAP_LOC_PRIO_LOW )

    call SetStartLocPrioCount( 3, 2 )
    call SetStartLocPrio( 3, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 3, 1, 9, MAP_LOC_PRIO_LOW )

    call SetStartLocPrioCount( 4, 1 )
    call SetStartLocPrio( 4, 0, 2, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 5, 3 )
    call SetStartLocPrio( 5, 0, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 5, 1, 8, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 5, 2, 11, MAP_LOC_PRIO_LOW )

    call SetStartLocPrioCount( 6, 2 )
    call SetStartLocPrio( 6, 0, 7, MAP_LOC_PRIO_LOW )
    call SetStartLocPrio( 6, 1, 8, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 7, 2 )
    call SetStartLocPrio( 7, 0, 9, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 7, 1, 11, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 8, 4 )
    call SetStartLocPrio( 8, 0, 5, MAP_LOC_PRIO_LOW )
    call SetStartLocPrio( 8, 1, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 8, 2, 7, MAP_LOC_PRIO_LOW )
    call SetStartLocPrio( 8, 3, 11, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 9, 1 )
    call SetStartLocPrio( 9, 0, 7, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 10, 2 )
    call SetStartLocPrio( 10, 0, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 10, 1, 8, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 11, 1 )
    call SetStartLocPrio( 11, 0, 7, MAP_LOC_PRIO_HIGH )
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds( -7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 7424.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 7424.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM) )
    call SetDayNightModels( "Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl" )
    call NewSoundEnvironment( "Default" )
    call SetAmbientDaySound( "BarrensDay" )
    call SetAmbientNightSound( "BarrensNight" )
    call SetMapMusic( "Music", true, 0 )
    call InitBlizzard(  )
    call InitGlobals(  )

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName( "TRIGSTR_014" )
    call SetMapDescription( "TRIGSTR_016" )
    call SetPlayers( 12 )
    call SetTeams( 12 )
    call SetGamePlacement( MAP_PLACEMENT_TEAMS_TOGETHER )

    call DefineStartLocation( 0, -1216.0, -832.0 )
    call DefineStartLocation( 1, -2240.0, 192.0 )
    call DefineStartLocation( 2, -1536.0, 1216.0 )
    call DefineStartLocation( 3, -1600.0, -2048.0 )
    call DefineStartLocation( 4, -2240.0, 1920.0 )
    call DefineStartLocation( 5, -448.0, 1664.0 )
    call DefineStartLocation( 6, 1344.0, 128.0 )
    call DefineStartLocation( 7, -256.0, -384.0 )
    call DefineStartLocation( 8, 320.0, 704.0 )
    call DefineStartLocation( 9, -256.0, -896.0 )
    call DefineStartLocation( 10, 2304.0, 1664.0 )
    call DefineStartLocation( 11, -512.0, 192.0 )

    // Player setup
    call InitCustomPlayerSlots(  )
    call InitCustomTeams(  )
    call InitAllyPriorities(  )
endfunction
