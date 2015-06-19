/*
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com // www.infiSTAR.de
*/
fnc_infiCleanup = {
	_cleaned = 0;
	{
		if(!isNull _x)then{
			private "_var";
			_var = _x getVariable["CLEANUP_TIME",-1];
			if(_var isEqualTo -1)then{
				_x setVariable["CLEANUP_TIME",(time+300)];
			}else{
				if(time > _var)then{
					deleteVehicle _x;
					_cleaned = _cleaned + 1;
				};
			};
		};
	} forEach _this;
	_log = format["SERVER-FPS: %1 | %2 objects cleaned up",diag_fps,_cleaned];
	"ARMA_LOG" callExtension format["A3_CLEANUP:%1",_log];
};
if(isNil "Epoch_SStart")then
{
	Epoch_SStart=true;
	[] spawn {
		call compile preprocessFileLineNumbers "\x\addons\a3_epoch_code\init\both_init.sqf";
		call compile preprocessFileLineNumbers "\a3_fix_epoch\init\server_init.sqf";
	};
};
true