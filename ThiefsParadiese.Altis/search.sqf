if(goggles player != "G_Balaclava_blk") exitWith {
hint "Kein Balaclava an!";
};

if(goggles player == "G_Balaclava_blk") exitWith {

success = 0;
[5, [], {success = 1}, {success = 0}, "Durchsuche Möbel"] call ace_common_fnc_progressBar;
[player, "REPAIR_VEH_KNEEL", "ASIS"] call BIS_fnc_ambientAnimCombat;
sleep 5.5;
rand = random [1, 5, 10];
price = round(random [30, 80, 1000]);
if(rand >= 1 && success == 1)  exitWith {
		_this select 0 removeAction 0;
		hint format ["Du hast Diebesgut im Wert von %price gefunden"];
		_PickUpOld = player getVariable "playerPickUp";
		_PickUpCounter = _PickUpOld + price;
		player setVariable ["playerPickUp", _PickUpCounter];
		};
		
		if(success == 0) exitWith {
		};
		
if(rand < 1 && success == 1)  exitWith {
		_this select 0 removeAction 0;
		hint format ["Nichts gefunden"];
		};
		
		if(success == 0) exitWith {
		};
	};