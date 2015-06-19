/*
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com // www.infiSTAR.de
*/
class CfgPatches {
	class a3_fix_epoch {
		units[] = {};
		weapons[] = {};
		a3_fix_epoch_version = 0.1;
		requiredVersion = 1.36;
		requiredAddons[] = {"a3_epoch_server"};
	};
};
class CfgFunctions {
	class a3_fix_epoch
	{
		class main {
			file = "a3_fix_epoch";
			class preInit {
				preInit = 1;
				//	postInit = 1;
			};
		};
	};
};