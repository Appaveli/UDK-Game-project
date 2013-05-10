/*******************************************************************************
	MyTestEnemy

	Creation date: 10/07/2012 21:20
	Copyright (c) 2012, dominque
	<!-- $Id: NewClass.uc,v 1.1 2004/03/29 10:39:26 elmuerte Exp $ -->
*******************************************************************************/

class MyTestEnemy extends MyActor
	placeable;


event TakeDamage(int DamageAmount, Controller EventInstigator, vector HitLocation, vector Momentum, class<DamageType> DamageType, 
	optional TraceHitInfo HitInfo, optional Actor DamageCauser)
{
	//checks to see if Damage occured
	if(EventInstigator != none && EventInstigator.PlayerReplicationInfo != none)
		WorldInfo.Game.ScoreObjective(EventInstigator.PlayerReplicationInfo,1);
	Destroy();
}

defaultproperties 
{
	bBlockActors=true
	bCollideActors=true
	Begin Object Class=DynamicLightEnvironmentComponent Name=MyLightEnvironment
    bEnabled=true
	End Object
	Components.Add(MyLightEnvironment)
    Begin Object Class=StaticMeshComponent Name=PickupMesh
		StaticMesh=StaticMesh'UN_SimpleMeshes.TexPropCube_Dup'
        Materials(0)= Material'EditorMaterials.WidgetMaterial_Y'
        LightEnvironment=MyLightEnvironment
        //Scale3D=(X=0.125,Y=0.125, Z=0.125)
		Scale3D=(X=0.25,Y=0.25,Z=0.5)
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
	/*bBlockActors=True 
	bCollideActors=True 
	Begin Object Class=DynamicLightEnvironmentComponent Name=MyLightEnvironment 
	bEnabled=True
	End Object 
	Components.Add(MyLightEnvironment) 
	Begin Object Class=StaticMeshComponent Name=PickupMesh 
	StaticMesh=StaticMesh'UN_SimpleMeshes.TexPropCube_Dup'
	Materials(0)=Material'EditorMaterials.WidgetMaterial_Y'
	LightEnvironment=MyLightEnvironment 
	Scale3D=(X=0.25,Y=0.25,Z=0.5)
	End Object 
	Components.Add(PickupMesh) 
	Begin Object Class=CylinderComponent Name=CollisionCylinder 
	CollisionRadius=32.0
	CollisionHeight=64.0 
	BlockNonZeroExtent=true 
	BlockZeroExtent=true 
	BlockActors=true 
	CollideActors=true
	End Object 
	CollisionComponent=CollisionCylinder 
	Components.Add(CollisionCylinder)*/
}