/*******************************************************************************
	MyWeaponUpgrade

	Creation date: 11/09/2012 22:57
	Copyright (c) 2012, dominque
	<!-- $Id: NewClass.uc,v 1.1 2004/03/29 10:39:26 elmuerte Exp $ -->
*******************************************************************************/

class MyWeaponUpgrade extends MyActor
	placeable;
event Touch(Actor Other, PrimitiveComponent OtherComp, vector HitLocation, vector HitNormal)
{
	if(Pawn(Other) != none && MyWeapon (Pawn(Other).Weapon) != none)
	{
		MyWeapon(Pawn(Other).Weapon).UpgradeWeapon();
		Destroy();
	}
}

defaultproperties 
{
	bCollideActors=true
	Begin Object Class=DynamicLightEnvironmentComponent Name=MyLightEnvironment
    bEnabled=true
	End Object
	Components.Add(MyLightEnvironment)
    Begin Object Class=StaticMeshComponent Name=PickupMesh
		StaticMesh=StaticMesh'UN_SimpleMeshes.TexPropCube_Dup'
        Materials(0)= Material'EditorMaterials.WidgetMaterial_Y'
        LightEnvironment=MyLightEnvironment
        Scale3D=(X=0.125,Y=0.125, Z=0.125)
  End Object
	Components.Add(PickupMesh)
	Begin Object Class=CylinderComponent Name=CylinderComponent
	CollisionRadius=16.0
    CollisionHeight=16.0
    BlockNonZeroExtent=true 
	BlockZeroExtent=true 
	BlockActors=true 
	CollideActors=true
End Object 
CollisionComponent=CollisionCylinder 
Components.Add(CollisionCylinder)
}