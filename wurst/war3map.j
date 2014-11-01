globals
    // User-defined
integer udg_sandwormlives= 0
integer udg_elveslives= 0

    // Generated
trigger gg_trg_Unbezeichneter_Ausl__ser_004= null
trigger gg_trg_Unbezeichneter_Ausl__ser_004_Kopieren= null
trigger gg_trg_Unbezeichneter_Ausl__ser_002= null
trigger gg_trg_Unbezeichneter_Ausl__ser_003= null
trigger gg_trg_Unbezeichneter_Ausl__ser_001= null
unit gg_unit_ncp3_0002= null
unit gg_unit_ncp3_0003= null
item gg_item_nflg_0004= null
item gg_item_oflg_0005= null


//JASSHelper struct globals:

endglobals


//===========================================================================
// 
// Noch eine WARCRAFT-III-Karte
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Sat Nov 01 19:24:58 2014
//   Map Author: Unbekannt
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
    set udg_sandwormlives=5
    set udg_elveslives=5
endfunction

//***************************************************************************
//*
//*  Items
//*
//***************************************************************************

function CreateAllItems takes nothing returns nothing
    local integer itemID

    set gg_item_nflg_0004=CreateItem('nflg', - 5523.6, - 62.3)
    set gg_item_oflg_0005=CreateItem('oflg', 5720.5, - 69.6)
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_ncp3_0002=CreateUnit(p, 'ncp3', 5696.0, - 64.0, 270.000)
    set gg_unit_ncp3_0003=CreateUnit(p, 'ncp3', - 5504.0, - 64.0, 270.000)
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreatePlayerBuildings()
    call CreatePlayerUnits()
endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Unbezeichneter Auslöser 004
//===========================================================================
function Trig_Unbezeichneter_Ausl__ser_004_Func001Func004C takes nothing returns boolean
    if ( not ( udg_sandwormlives > 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Unbezeichneter_Ausl__ser_004_Func001Func006C takes nothing returns boolean
    if ( ( UnitItemInSlotBJ(GetTriggerUnit(), 1) == gg_item_oflg_0005 ) ) then
        return true
    endif
    if ( ( UnitItemInSlotBJ(GetTriggerUnit(), 2) == gg_item_oflg_0005 ) ) then
        return true
    endif
    if ( ( UnitItemInSlotBJ(GetTriggerUnit(), 3) == gg_item_oflg_0005 ) ) then
        return true
    endif
    if ( ( UnitItemInSlotBJ(GetTriggerUnit(), 4) == gg_item_oflg_0005 ) ) then
        return true
    endif
    if ( ( UnitItemInSlotBJ(GetTriggerUnit(), 5) == gg_item_oflg_0005 ) ) then
        return true
    endif
    if ( ( UnitItemInSlotBJ(GetTriggerUnit(), 6) == gg_item_oflg_0005 ) ) then
        return true
    endif
    return false
endfunction

function Trig_Unbezeichneter_Ausl__ser_004_Func001C takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTriggerUnit()) == 'earc' ) ) then
        return false
    endif
    if ( not Trig_Unbezeichneter_Ausl__ser_004_Func001Func006C() ) then
        return false
    endif
    return true
endfunction

function Trig_Unbezeichneter_Ausl__ser_004_Actions takes nothing returns nothing
    if ( Trig_Unbezeichneter_Ausl__ser_004_Func001C() ) then
        call UnitRemoveItemSwapped(gg_item_oflg_0005, GetTriggerUnit())
        call SetItemPositionLoc(gg_item_oflg_0005, GetUnitLoc(gg_unit_ncp3_0002))
        set udg_sandwormlives=( udg_sandwormlives - 1 )
        if ( Trig_Unbezeichneter_Ausl__ser_004_Func001Func004C() ) then
            call LeaderboardSetPlayerItemValueBJ(Player(11), GetLastCreatedLeaderboard(), udg_sandwormlives)
        else
            set bj_forLoopAIndex=7
            set bj_forLoopAIndexEnd=12
            loop
                exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                call CustomDefeatBJ(ConvertedPlayer(GetForLoopIndexA()), "TRIGSTR_013")
                set bj_forLoopAIndex=bj_forLoopAIndex + 1
            endloop
            set bj_forLoopAIndex=1
            set bj_forLoopAIndexEnd=6
            loop
                exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                call CustomVictoryBJ(ConvertedPlayer(GetForLoopIndexA()), true, true)
                set bj_forLoopAIndex=bj_forLoopAIndex + 1
            endloop
        endif
    else
    endif
endfunction

//===========================================================================
function InitTrig_Unbezeichneter_Ausl__ser_004 takes nothing returns nothing
    set gg_trg_Unbezeichneter_Ausl__ser_004=CreateTrigger()
    call TriggerRegisterUnitInRangeSimple(gg_trg_Unbezeichneter_Ausl__ser_004, 150.00, gg_unit_ncp3_0003)
    call TriggerAddAction(gg_trg_Unbezeichneter_Ausl__ser_004, function Trig_Unbezeichneter_Ausl__ser_004_Actions)
endfunction

//===========================================================================
// Trigger: Unbezeichneter Auslöser 004 Kopieren
//===========================================================================
function Trig_Unbezeichneter_Ausl__ser_004_Kopieren_Func001Func004C takes nothing returns boolean
    if ( not ( udg_elveslives > 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Unbezeichneter_Ausl__ser_004_Kopieren_Func001Func006C takes nothing returns boolean
    if ( ( UnitItemInSlotBJ(GetTriggerUnit(), 1) == gg_item_nflg_0004 ) ) then
        return true
    endif
    if ( ( UnitItemInSlotBJ(GetTriggerUnit(), 2) == gg_item_nflg_0004 ) ) then
        return true
    endif
    if ( ( UnitItemInSlotBJ(GetTriggerUnit(), 3) == gg_item_nflg_0004 ) ) then
        return true
    endif
    if ( ( UnitItemInSlotBJ(GetTriggerUnit(), 4) == gg_item_nflg_0004 ) ) then
        return true
    endif
    if ( ( UnitItemInSlotBJ(GetTriggerUnit(), 5) == gg_item_nflg_0004 ) ) then
        return true
    endif
    if ( ( UnitItemInSlotBJ(GetTriggerUnit(), 6) == gg_item_nflg_0004 ) ) then
        return true
    endif
    return false
endfunction

function Trig_Unbezeichneter_Ausl__ser_004_Kopieren_Func001C takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTriggerUnit()) != 'earc' ) ) then
        return false
    endif
    if ( not Trig_Unbezeichneter_Ausl__ser_004_Kopieren_Func001Func006C() ) then
        return false
    endif
    return true
endfunction

function Trig_Unbezeichneter_Ausl__ser_004_Kopieren_Actions takes nothing returns nothing
    if ( Trig_Unbezeichneter_Ausl__ser_004_Kopieren_Func001C() ) then
        call UnitRemoveItemSwapped(gg_item_nflg_0004, GetTriggerUnit())
        call SetItemPositionLoc(gg_item_nflg_0004, GetUnitLoc(gg_unit_ncp3_0003))
        set udg_elveslives=( udg_elveslives - 1 )
        if ( Trig_Unbezeichneter_Ausl__ser_004_Kopieren_Func001Func004C() ) then
            call LeaderboardSetPlayerItemValueBJ(Player(6), GetLastCreatedLeaderboard(), udg_elveslives)
        else
            set bj_forLoopAIndex=1
            set bj_forLoopAIndexEnd=6
            loop
                exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                call CustomDefeatBJ(ConvertedPlayer(GetForLoopIndexA()), "TRIGSTR_021")
                set bj_forLoopAIndex=bj_forLoopAIndex + 1
            endloop
            set bj_forLoopAIndex=7
            set bj_forLoopAIndexEnd=12
            loop
                exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                call CustomVictoryBJ(ConvertedPlayer(GetForLoopIndexA()), true, true)
                set bj_forLoopAIndex=bj_forLoopAIndex + 1
            endloop
        endif
    else
    endif
endfunction

//===========================================================================
function InitTrig_Unbezeichneter_Ausl__ser_004_Kopieren takes nothing returns nothing
    set gg_trg_Unbezeichneter_Ausl__ser_004_Kopieren=CreateTrigger()
    call TriggerRegisterUnitInRangeSimple(gg_trg_Unbezeichneter_Ausl__ser_004_Kopieren, 150.00, gg_unit_ncp3_0002)
    call TriggerAddAction(gg_trg_Unbezeichneter_Ausl__ser_004_Kopieren, function Trig_Unbezeichneter_Ausl__ser_004_Kopieren_Actions)
endfunction

//===========================================================================
// Trigger: Unbezeichneter Auslöser 002
//===========================================================================
function Trig_Unbezeichneter_Ausl__ser_002_Actions takes nothing returns nothing
    call UnitRemoveItemSwapped(gg_item_nflg_0004, GetTriggerUnit())
    call UnitRemoveItemSwapped(gg_item_oflg_0005, GetTriggerUnit())
endfunction

//===========================================================================
function InitTrig_Unbezeichneter_Ausl__ser_002 takes nothing returns nothing
    set gg_trg_Unbezeichneter_Ausl__ser_002=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Unbezeichneter_Ausl__ser_002, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Unbezeichneter_Ausl__ser_002, function Trig_Unbezeichneter_Ausl__ser_002_Actions)
endfunction

//===========================================================================
// Trigger: Unbezeichneter Auslöser 003
//===========================================================================
function Trig_Unbezeichneter_Ausl__ser_003_Actions takes nothing returns nothing
    call CreateLeaderboardBJ(GetPlayersAll(), "TRIGSTR_010")
    call LeaderboardAddItemBJ(Player(6), GetLastCreatedLeaderboard(), "TRIGSTR_011", 5)
    call LeaderboardAddItemBJ(Player(11), GetLastCreatedLeaderboard(), "TRIGSTR_012", 5)
    call LeaderboardDisplayBJ(true, GetLastCreatedLeaderboard())
endfunction

//===========================================================================
function InitTrig_Unbezeichneter_Ausl__ser_003 takes nothing returns nothing
    set gg_trg_Unbezeichneter_Ausl__ser_003=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_Unbezeichneter_Ausl__ser_003, 1.00)
    call TriggerAddAction(gg_trg_Unbezeichneter_Ausl__ser_003, function Trig_Unbezeichneter_Ausl__ser_003_Actions)
endfunction

//===========================================================================
// Trigger: Unbezeichneter Auslöser 001
//===========================================================================
function Trig_Unbezeichneter_Ausl__ser_001_Func001Func001C takes nothing returns boolean
    if ( not ( gg_item_oflg_0005 == GetManipulatedItem() ) ) then
        return false
    endif
    return true
endfunction

function Trig_Unbezeichneter_Ausl__ser_001_Func001Func002C takes nothing returns boolean
    if ( not ( gg_item_nflg_0004 == GetManipulatedItem() ) ) then
        return false
    endif
    return true
endfunction

function Trig_Unbezeichneter_Ausl__ser_001_Func001C takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTriggerUnit()) == 'earc' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Unbezeichneter_Ausl__ser_001_Actions takes nothing returns nothing
    if ( Trig_Unbezeichneter_Ausl__ser_001_Func001C() ) then
        if ( Trig_Unbezeichneter_Ausl__ser_001_Func001Func002C() ) then
            call UnitRemoveItemSwapped(gg_item_nflg_0004, GetTriggerUnit())
            call SetItemPositionLoc(GetManipulatedItem(), GetUnitLoc(gg_unit_ncp3_0003))
        else
        endif
    else
        if ( Trig_Unbezeichneter_Ausl__ser_001_Func001Func001C() ) then
            call UnitRemoveItemSwapped(gg_item_oflg_0005, GetTriggerUnit())
            call SetItemPositionLoc(GetManipulatedItem(), GetUnitLoc(gg_unit_ncp3_0002))
        else
        endif
    endif
endfunction

//===========================================================================
function InitTrig_Unbezeichneter_Ausl__ser_001 takes nothing returns nothing
    set gg_trg_Unbezeichneter_Ausl__ser_001=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Unbezeichneter_Ausl__ser_001, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(gg_trg_Unbezeichneter_Ausl__ser_001, function Trig_Unbezeichneter_Ausl__ser_001_Actions)
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Unbezeichneter_Ausl__ser_004()
    call InitTrig_Unbezeichneter_Ausl__ser_004_Kopieren()
    call InitTrig_Unbezeichneter_Ausl__ser_002()
    call InitTrig_Unbezeichneter_Ausl__ser_003()
    call InitTrig_Unbezeichneter_Ausl__ser_001()
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_006
    call SetPlayerTeam(Player(0), 0)

endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 8192.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 4096.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 8192.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 4096.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 8192.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 4096.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 8192.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 4096.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("BarrensDay")
    call SetAmbientNightSound("BarrensNight")
    call SetMapMusic("Music", true, 0)
    call CreateAllItems()
    call CreateAllUnits()
    call InitBlizzard()


    call InitGlobals()
    call InitCustomTriggers()

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_001")
    call SetMapDescription("TRIGSTR_003")
    call SetPlayers(1)
    call SetTeams(1)
    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)

    call DefineStartLocation(0, 6272.0, 3392.0)

    // Player setup
    call InitCustomPlayerSlots()
    call SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    call InitGenericPlayerSlots()
endfunction




//Struct method generated initializers/callers:

