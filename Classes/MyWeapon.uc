/*******************************************************************************
	MyWeapon

	Creation date: 11/09/2012 22:42
	Copyright (c) 2012, dominque
	<!-- $Id: NewClass.uc,v 1.1 2004/03/29 10:39:26 elmuerte Exp $ -->
*******************************************************************************/

class MyWeapon extends UTWeapon;
var int CurrentWeaponLevel;

function UpgradeWeapon()
{
	CurrentWeaponLevel++;
	`log("Current Weapon Level:" @CurrentWeaponLevel);
}

defaultproperties
{
}