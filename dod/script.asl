startup
{
	vars.onNewGame = false;
	vars.canSplit = false;
}

start
{
	if (!vars.onNewGame && features["onNewGameYes"].current > 20.0 && features["newGameWarning"].current > 20.0)
		vars.onNewGame = true;
	
	if (vars.onNewGame && features["newGameWarning"].current < 15.0)
	{
		vars.onNewGame = false;
		return true;
	}
}

split
{
	if (features["onMission_0"].current > 15.0 && features["onMission_1"].current > 15.0)
		vars.canSplit = true;

	if (!vars.canSplit) return false;

	if (features["missionComplete"].current > 15.0 && features["onMission_1"].current < 10.0)
	{
		vars.canSplit = false;
		return true;
	}
}

isLoading
{
	return features["isLoading"].current > 20.0;
}