//Land_i_House_Big_02_V1_F
private _h=_this;

_building = (nearestobjects [_this, ["house"], 5]) select 0;
_owner = player;
_init = [_building,_owner] call GOM_fnc_initBuildingDoors;

private _ball=createSimpleObject["Land_Baseball_01_F",[0,0,0]];
private _bed=createVehicle["Land_WoodenBed_01_F",[0,0,0]];
private _boombox=createVehicle["Land_PortableSpeakers_01_F",[0,0,0]];
private _box=createVehicle["Land_PaperBox_01_small_open_brown_F",[0,0,0]];
private _chair1=createSimpleObject["Land_CampingChair_V1_F",[0,0,0]];
private _chair2=createSimpleObject["Land_CampingChair_V1_F",[0,0,0]];
private _chairW1=createSimpleObject["Land_ChairWood_F",[0,0,0]];
private _chairW2=createSimpleObject["Land_ChairWood_F",[0,0,0]];
private _cord=createSimpleObject["Land_ExtensionCord_F",[0,0,0]];
private _desk1=createVehicle["OfficeTable_01_old_F",[0,0,0]];
private _desk2=createVehicle["Land_TableDesk_F",[0,0,0]];
private _desk3=createVehicle["Land_TableDesk_F",[0,0,0]];
private _fridge=createSimpleObject["Fridge_01_closed_F",[0,0,0]];
private _glove=createSimpleObject["Land_BaseballMitt_01_F",[0,0,0]];
private _HDMI=createVehicle["Land_HDMICable_01_F",[0,0,0]];
private _luggage=createVehicle["Land_LuggageHeap_01_F",[0,0,0],[],0,"can_collide"];_luggage enableSimulationGlobal false;
private _mCase=createVehicle["Land_PlasticCase_01_small_F",[0,0,0]];
private _microW=createVehicle["Land_Microwave_01_F",[0,0,0]];
private _pot=createSimpleObject["Land_FlowerPot_01_F",[0,0,0]];
private _rack=createVehicle["Land_Metal_wooden_rack_F",[0,0,0]];
private _sack=createVehicle["Land_Sack_F",[0,0,0],[],0,"can_collide"];_sack enableSimulationGlobal false;
private _shelf=createVehicle["Land_OfficeCabinet_01_F",[0,0,0],[],0,"can_collide"];_shelf enableSimulationGlobal false;
private _sink=createSimpleObject["Land_Sink_F",[0,0,0]];
private _sofa1=createVehicle["Land_ArmChair_01_F",[0,0,0]];
private _sofa2=createVehicle["Land_Sofa_01_F",[0,0,0]];
private _sTable=createSimpleObject["Land_RattanTable_01_F",[0,0,0]];
private _sTable1=createSimpleObject["Land_WoodenTable_small_F",[0,0,0]];
private _trash=createSimpleObject["Land_WheelieBin_01_F",[0,0,0]];
private _trophy=selectRandom["Land_Trophy_01_bronze_F","Land_Trophy_01_silver_F","Land_Trophy_01_gold_F"];
private _trophy=createVehicle[_trophy,[0,0,0]];
private _TV=createVehicle["Land_FlatTV_01_F",[0,0,0]];
private _xbox=createVehicle["Land_GamignSet_01_console_F",[0,0,0]];
private _xboxCam=createVehicle["Land_GamingSet_01_camera_F",[0,0,0]];
private _xboxC1=createVehicle["Land_GamingSet_01_controller_F",[0,0,0]];
private _xboxC2=createVehicle["Land_GamingSet_01_controller_F",[0,0,0]];

_price = round(random [150, 200, 300]);
_boombox addAction ["<img size='2' image='res\take.paa'/>", "beute.sqf", _price];

_price = round(random [3, 5, 10]);
_HDMI addAction ["<img size='2' image='res\take.paa'/>", "beute.sqf", _price];

_price = round(random [50, 75, 100]);
_microW addAction ["<img size='2' image='res\take.paa'/>", "beute.sqf", _price];

_price = round(random [150, 250, 450]);
_trophy addAction ["<img size='2' image='res\take.paa'/>", "beute.sqf", _price];

_price = round(random [200, 300, 400]);
_xbox addAction ["<img size='2' image='res\take.paa'/>", "beute.sqf", _price];

_price = round(random [30, 40, 50]);
_xboxCam addAction ["<img size='2' image='res\take.paa'/>", "beute.sqf", _price];

_price = round(random [15, 25, 50]);
_xboxC1 addAction ["<img size='2' image='res\take.paa'/>", "beute.sqf", _price];

_price = round(random [15, 25, 50]);
_xboxC2 addAction ["<img size='2' image='res\take.paa'/>", "beute.sqf", _price];

_price = round(random [250, 500, 750]);
_TV addAction ["<img size='2' image='res\take.paa'/>", "beute.sqf", _price];

_bed addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_box addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_desk1 addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_desk2 addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_desk3 addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_luggage addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_mcase addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_rack addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_sofa1 addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_sofa2 addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];

_trash attachTo[_h,[1.75,-1.05,.73]];_trash setDir 250;
_rack attachTo[_h,[2.36,-1.81,0.72]];_rack setDir 90;
_sack attachTo[_h,[0,-3.7,4]];_sack setDir 90;
_bed attachTo[_h,[2,.8,4.07]];_bed setDir 180;
_sofa1 attachTo[_h,[4,.38,4.1]];_sofa1 setDir 330;
_shelf attachTo[_h,[0.2,0,4.39]];_shelf setDir 180;
_mCase attachTo[_h,[2,2.1,3.765]];_mCase setDir 90;
_sTable attachTo[_h,[3.2,4.6,4.012]];_sTable setDir 90;
_pot attachTo[_h,[3.2,4.6,4.529]];_pot setDir(random 359);
_desk1 attachTo[_h,[-3.3,0,3.78]];
_TV attachTo[_h,[-3.3,-0.1,4.5]];_TV setDir 180;
_xbox attachTo[_h,[-2.9,.22,4.22]];_xbox setDir 160;
_xboxCam attachTo[_h,[-2.9,.3,4.285]];_xboxCam setDir 160;
_HDMI attachTo[_h,[-2.85,-0.1,4.189]];_HDMI setDir(random 359);
_boombox attachTo[_h,[-3.3,.05,4.22]];_boombox setDir 90;
_cord attachTo[_h,[-2.85,-0.1,3.7]];_cord setDir 90;
_xboxC1 attachTo[_h,[-3.6,.22,4.22]];_xboxC1 setDir(random 30)+180;
_xboxC2 attachTo[_h,[-3.2,2.4,4.138]];_xboxC2 setDir(random 90)+130;
_chair1 attachTo[_h,[-3.3,2.5,4.12]];
_chair2 attachTo[_h,[-4.05,2.3,4.12]];_chair2 setDir 340;
_fridge attachTo[_h,[-3.43,0,0.76]];_fridge setDir 180;
_desk2 attachTo[_h,[-4.15,0.6,0.545]];_desk2 setDir 270;
_desk3 attachTo[_h,[-4.15,2.36,0.545]];_desk3 setDir 270;
_microW attachTo[_h,[-4.1,1.2,1.045]];_microW setDir 270;
_sink attachTo[_h,[-4.135,4.3,0.8]];_sink setDir 90;
_sTable1 attachTo[_h,[4.25,.45,0.67]];
_sofa2 attachTo[_h,[0.95,.15,0.74]];
_chairW1 attachTo[_h,[3.75,.4,0.245]];_chairW1 setDir 270;
_chairW2 attachTo[_h,[4.2,1,0.245]];
_luggage attachTo[_h,[-4.08,3.2,4.13]];
_trophy attachTo[_h,[2.2,-1.67,1.445]];_trophy setDir 70;
_glove attachTo[_h,[2.25,-1.87,1.35]];_glove setDir 230;
_ball attachTo[_h,[2.25,-1.85,1.354]];_ball setDir(random 359);
_box attachTo[_h,[-3.85,-1.3,3.825]];_box setDir(random 359);

if(dayTime>18 || dayTime<5)then{
	sleep 5;
	private _guyHome=_h nearEntities["Man",6];
	if(count _guyHome>0)then{
	private _light1=createVehicle["#lightpoint",[0,0,0],[],0,"can_collide"];
	_light1 attachTo[_h,[-3.5,-0.1,4.3]];
	_light1 setLightColor[1,1,1];   
	_light1 setLightAmbient[.01,.01,.01];   
	_light1 setLightBrightness 0.04;};
	};

if(PF_Optimize)then{
sleep .2;
{_x hideObjectGlobal true}forEach attachedObjects _H;};