SetUsePerfThreads="-useperfthreads "
if [[ $UsePerfThreads == "false" ]]; then
    SetUsePerfThreads=""
fi

SetNoAsyncLoadingThread="-NoAsyncLoadingThread "
if [[ $NoAsyncLoadingThread == "false" ]]; then
    SetNoAsyncLoadingThread=""
fi

# server settings
ServerName="${ServerName:-HumanitzServer}"
ServerPassword="${ServerPassword:-password}"
Port="${Port:-7777}"
QueryPort="${QueryPort:-27015}"
MaxServerPlayers="${MaxServerPlayers:-8}"

BIN_PATH=/server/HumanitZServer/Binaries/Win64

if [ ! -d "${BIN_PATH}" ] || [[ $AutoUpdate == "true" ]]; then
    steamcmd \
    +@sSteamCmdForcePlatformType windows \
    +force_install_dir /server \
    +login anonymous \
    +app_update 2728330 validate \
    +quit
fi

pushd ${BIN_PATH} > /dev/null

wine HumanitZServer-Win64-Shipping.exe \
  $SetUsePerfThreads$SetNoAsyncLoadingThread-log \
  -PORT=$Port -QueryPort=${QueryPort} \
  -SteamServerName="${ServerName}" \
  -ServerPassword=${ServerPassword} \
  -MaxServerPlayers=${MaxServerPlayers}

popd > /dev/null
