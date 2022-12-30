startup
{
	vars.onNewGame = false;
	vars.canSplit = false;
}

start
{
	if (!vars.onNewGame && features["onNewGame"].current > 15.0)
		vars.onNewGame = true;

	if (vars.onNewGame && features["onLoadGame"].current > 15.0)
		vars.onNewGame = false;
	
	if (vars.onNewGame && features["blackScreen"].current > 15.0)
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

	if (features["missionComplete"].current > 15.0)
	{
		vars.canSplit = false;
		return true;
	}
}

isLoading
{
	return features["isLoading"].current > 10.0;
}