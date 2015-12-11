class EmtpyLine1 {
	//--- paramsArray[0]
	title = ":: Core Settings";
	values[]={0,0};
	texts[]={ "",""};
	default = 0;
};
class INS_StartTime {
	//--- paramsArray[1]
	title = "Mission Start Time";
	values[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24};
	texts[] = {
		"1:00","2:00","3:00","4:00","5:00","6:00","7:00","8:00","9:00","10:00","11:00","12:00",
		"13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00","24:00"
	};
	default = 10;
	function = "BIS_fnc_paramDaytime";
};
class INS_CacheLimit {
	//--- paramsArray[2]
	title = "Number of caches to hunt";
	values[] = {2,4,6,8,10,12,14,16};
	texts[] = {"Two","Four","Six","Eight","Ten","Twelve","Fourteen","Sixteen"};
	default = 4;
};
class INS_DropRate {
	//--- paramsArray[3]
	title = "The rate at which intel will drop off dead bodies";
	values[] = {98,95,92,85,80,75,65,50,0};
	texts[] = {"2% Chance","5% Chance","8% Chance","15% Chance","20% Chance","25% Chance","35% Chance","50% Chance","100% Chance"};
	default = 85;
};