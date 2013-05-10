/*******************************************************************************
	MyPlayerController

	Creation date: 08/07/2012 18:42
	Copyright (c) 2012, dominque
	<!-- $Id: NewClass.uc,v 1.1 2004/03/29 10:39:26 elmuerte Exp $ -->
*******************************************************************************/

class MyPlayerController extends UTPlayerController;
var vector PlayerViewOffset;

simulated function PostBeginPlay()
{
    super.PostBeginPlay();
    bNoCrosshair = true;
	

}

simulated event GetPlayerViewPoint(out vector out_Location, out Rotator out_Rotation)
{
    super.GetPlayerViewPoint(out_Location, out_Rotation);
    if(Pawn != none){
    Pawn.Mesh.SetOwnerNoSee(false);
    if(Pawn.Weapon!=none)
    {
        Pawn.Weapon.SetHidden(true);
        out_Location = Pawn.Location + PlayerViewOffset;
        out_Rotation = rotator(Pawn.Location - out_Location);
    }
}
}

function Rotator GetAdjustedAimFor(Weapon w, vector StartFireLoc)
{
    return Pawn.Rotation;
}
defaultproperties
{
    PlayerViewOffset=(X=-64, Y=0, Z=300)
	

}
