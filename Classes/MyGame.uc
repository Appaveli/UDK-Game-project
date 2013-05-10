/*******************************************************************************
	MyGame

	Creation date: 08/07/2012 17:52
	Copyright (c) 2012, dominque
	<!-- $Id: NewClass.uc,v 1.1 2004/03/29 10:39:26 elmuerte Exp $ -->
*******************************************************************************/

class MyGame extends UTDeathmatch;

simulated function PostBeginPlay()
{
	local MyTestEnemy TE;
	super.PostBeginPlay();
    GoalScore = 5;
	ForEach DynamicActors(class'MyTestEnemy',TE)
		GoalScore++;
	
	
}
defaultproperties
{
    PlayerControllerClass=class'MyGame.MyPlayerController'
}

