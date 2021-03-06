//Land_i_House_Small_03_V1_F
private _h=_this;

_building = (nearestobjects [_this, ["house"], 5]) select 0;
_owner = player;
_init = [_building,_owner] call GOM_fnc_initBuildingDoors;

private _bed1=createVehicle["Land_CampingTable_F",[0,0,0]];
private _bed2=createVehicle["Land_CampingTable_F",[0,0,0]];
private _blanket=selectRandom["Land_Sleeping_bag_F","Land_Sleeping_bag_blue_F","Land_Sleeping_bag_brown_F"];
private _blanket1=createVehicle[_blanket,[0,0,0],[],0,"can_collide"];_blanket1 enableSimulationGlobal false;
private _blanket2=createVehicle[_blanket,[0,0,0],[],0,"can_collide"];_blanket2 enableSimulationGlobal false;
private _chair1=createSimpleObject["Land_ChairWood_F",[0,0,0]];
private _chair2=createSimpleObject["Land_ChairWood_F",[0,0,0]];
private _chair3=createSimpleObject["Land_ChairWood_F",[0,0,0]];
private _chair4=createSimpleObject["Land_ChairWood_F",[0,0,0]];
private _desk1=createVehicle["Land_TableDesk_F",[0,0,0]];
private _desk2=createVehicle["Land_TableDesk_F",[0,0,0]];
private _desk3=createVehicle["OfficeTable_01_old_F",[0,0,0]];
private _dTable=createSimpleObject["Land_TableBig_01_F",[0,0,0]];
private _fridge=createSimpleObject["Fridge_01_closed_F",[0,0,0]];
private _microW=createVehicle["Land_Microwave_01_F",[0,0,0]];
private _pcCase=createVehicle["Land_PCSet_01_case_F",[0,0,0]];
private _pcKey=createVehicle["Land_PCSet_01_keyboard_F",[0,0,0]];
private _pcMouse=createVehicle["Land_PCSet_01_mouse_F",[0,0,0]];
private _pcScreen=createVehicle["Land_PCSet_01_screen_F",[0,0,0]];
private _pillow=selectRandom["Land_Pillow_F","Land_Pillow_camouflage_F","Land_Pillow_grey_F","Land_Pillow_old_F"];
private _pillow1=createSimpleObject[_pillow,[0,0,0]];
private _pillow2=createSimpleObject[_pillow,[0,0,0]];
private _plant=createSimpleObject["Land_FlowerPot_01_Flower_F",[0,0,0]];
private _rack1=createVehicle["Land_Rack_F",[0,0,0]];
private _rack2=createVehicle["Land_OfficeCabinet_01_F",[0,0,0]];
private _sink=createSimpleObject["Land_Sink_F",[0,0,0]];
private _sofa=createVehicle["Land_ArmChair_01_F",[0,0,0]];
private _sTable=createSimpleObject["Land_RattanTable_01_F",[0,0,0]];

_price = round(random [50, 75, 100]);
_microW addAction ["<img size='2' image='res\take.paa'/>", "beute.sqf", _price];

_price = round(random [250, 500, 1050]);
_pcCase addAction ["<img size='2' image='res\take.paa'/>", "beute.sqf", _price];

_price = round(random [50, 75, 100]);
_pcKey addAction ["<img size='2' image='res\take.paa'/>", "beute.sqf", _price];

_price = round(random [20, 55, 75]);
_pcMouse addAction ["<img size='2' image='res\take.paa'/>", "beute.sqf", _price];

_price = round(random [100, 250, 500]);
_pcScreen addAction ["<img size='2' image='res\take.paa'/>", "beute.sqf", _price];

_bed1 addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_bed2 addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_desk1 addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_desk2 addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_desk3 addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_rack1 addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];
_rack2 addAction ["<img size='2' image='res\search.paa'/>", "search.sqf"];

_chair1 attachTo[_h,[3,-5.3,0.3]];_chair1 setDir -20; 
_chair2 attachTo[_h,[3.8,-5.3,0.3]];_chair2 setDir 5; 
_chair3 attachTo[_h,[4.5,-5.3,0.3]];_chair3 setDir 30; 
_desk1 attachTo[_h,[5.1,1.627,0.61]];_desk1 setDir 90; 
_desk2 attachTo[_h,[5.1,-2.229,0.61]];_desk2 setDir 90; 
_rack1 attachTo[_h,[2.3,1.5,1.08]];
_dTable attachTo[_h,[3.8,-6,0.61]]; 
_plant attachTo[_h,[-3.8,-1.9,1.893]];_plant setDir(random 259); 
_rack2 attachTo[_h,[-2,-2.15,1.08]];_rack2 setDir 180;
_sink attachTo[_h,[5.1,-0.26,0.9]];_sink setDir 90; 
_microW attachTo[_h,[5.1,-2,1.11]];_microW setDir(random 30)+70;
_fridge attachTo[_h,[5.05,-3.44,.815]];_fridge setDir 90;
_sofa attachTo[_h,[-5,-1.8,0.79]]; 
_sTable attachTo[_h,[-3.8,-1.9,0.7]];
_bed1 attachTo[_h,[-5.07,3.9,0.35]];_bed1 setDir 90;
_blanket1 attachTo[_h,[-5.07,3.9,0.77]];
_bed2 attachTo[_h,[-4.35,3.9,0.35]];_bed2 setDir 90;
_blanket2 attachTo[_h,[-4.35,3.9,0.77]];
_pillow1 attachTo[_h,[-4.35,4.6,0.8]];
_pillow2 attachTo[_h,[-5.15,4.6,.8]];
_desk3 attachTo[_h,[.5,1.15,0.72]];_desk3 setDir 180;
_pcScreen attachTo[_h,[.7,1,1.38]];_pcScreen setDir 180;
_pcKey attachTo[_h,[.8,1.35,1.125]];_pcKey setDir 175;
_pcMouse attachTo[_h,[.45,1.4,1.15]];_pcMouse setDir 185;
_chair4 attachTo[_h,[.75,1.4,.3]];
_pcCase attachTo[_h,[1.4,1.2,.555]];_pcCase setDir 180;

if(PF_Optimize)then{
sleep .2;
{_x hideObjectGlobal true}forEach attachedObjects _H;};