class INS_RestrictionsHeader {
	//--- paramsArray[]
	title = ":: Vehicle Restrictions Module";
	values[] = {0,0};
	texts[] = {"",""};
	default = 0;
};

class INS_Restrictions {
	//--- paramsArray[0]
	title = "Vehicle Restrictions";
	values[]={0,1,2,3};
	texts[]={ "OFF","Restrict by Class","Restrict by player IDs","Restrict by both class AND player IDs"};
	default = 1;
};