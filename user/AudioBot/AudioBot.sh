#!/bin/bash
function urerfsadfs {
    echo -e "\\033[36;1m${@}\033[0m"
}

function r4p3 {
	echo -e "\\033[33;1m${@}\033[0m"
}


function wrhwerfsdf {
    echo -e "\\033[36;1m${@}\033[0m"
}

function corewaila {
    echo -e "\\033[32;1m${@}\033[0m"
}

urerfsadfs "

    ________    ___    ____  ________________    _   ______________
   / ____/ /   /   |  / __ \/ ____/ ____/ __ \  / | / / ____/_  __/
  / /_  / /   / /| | / /_/ / __/ / /   / / / / /  |/ / __/   / /   
 / __/ / /___/ ___ |/ _, _/ /___/ /___/ /_/ / / /|  / /___  / /    
/_/   /_____/_/  |_/_/ |_/_____/\____/\____(_)_/ |_/_____/ /_/     
                                                                   

"

corewaila "TS3AudioBot Installer"
corewaila "www.flareco.net"
corewaila "Cheap Servers: https://zap-hosting.com/cheapserver (Advertisement)"
sleep 4
urerfsadfs "Installing External Packages!"
sleep 1
clear
sudo apt-get update -y >/dev/null
sleep 1
apt-get install nano -y >/dev/null
clear
apt-get install gcc -y >/dev/null
clear
apt-get install zip -y >/dev/null
clear
apt-get install unzip -y >/dev/null
apt-get install screen -y >/dev/null
clear
clear
clear
r4p3 "You read this :P"
clear
clear
clear
apt-get install curl -y >/dev/null
apt-get install sudo -y >/dev/null
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF >/dev/null
sudo apt install apt-transport-https
clear
corewaila "100% - Completed"
sleep 1
corewaila  "Connecting to CDN. (cdn.flareco.net)....."
corewaila  "CONNECTED!"
sleep 1
clear
corewaila "Options"
  OPTIONS=("Install TS3AudioBot" "Start all TS3AudioBot Instances!"  "Stop all TS3AudioBot Instances!")
  select OPTION in "${OPTIONS[@]}"; do
    case "$REPLY" in
      1|2|3 ) break;;
      5 ) errorQuit;;
      *) errorContinue;;
    esac
  done
  
  if [ "$OPTION" == "Install TS3AudioBot" ]; then
    INSTALL="Install"
    elif [ "$OPTION" == "Start all TS3AudioBot Instances!" ]; then
    INSTALL="start"
	elif [ "$OPTION" == "Stop all TS3AudioBot Instances!" ]; then
    INSTALL="stop"
	fi


    if [[ $INSTALL == "Install" ]]; then
corewaila "Please Choose the Permission System you want to use!"
corewaila "Options:"
  
  OPTIONS=("Server Group" "TS3 Identity" )
  select OPTION in "${OPTIONS[@]}"; do
    case "$REPLY" in
      1|2 ) break;;
      5 ) errorQuit;;
      *) errorContinue;;
    esac
  done
  
	if [[ $INSTALL == "start" ]]; then
clear
corewaila "Please tell me the Instance Name of your TS3AudioBot ?"
read datinstance
sleep 1
corewaila "Starting Instance......"
cd /home/$datinstance
screen -AmdS $datinstance mono TS3AudioBot.exe
wrhwerfsdf "Instance has been started!"
	fi

	if [[ $INSTALL == "stop" ]]; then
clear
corewaila "Please tell me the Instance Name of your TS3AudioBot ?"
read stopinstance
sleep 1
screen -S $stopinstance -X quit
sleep 1
wrhwerfsdf "Instance has been Stopped!"
	fi

  if [ "$OPTION" == "Server Group" ]; then
    INSTALL1="Group"
	elif 
    elif [ "$OPTION" == "TS3 Identity" ]; then
    INSTALL1="ts3"
	fi
	if [[ $INSTALL1 == "Group" ]]; then
r4p3 "Which Server Group can Access the Bot ?"
read group
r4p3 "Please give me a Instance Name for your TS3AudioBot!"
read name
r4p3 "Name of the TS3AudioBot on your TeamSpeak?"
read botname
r4p3 "TeamSpeak3 Adresse (ex. 127.0.0.1):"
read server
r4p3 "TeamSpeak3 Port (ex. 9987):"
read port
corewaila "TeamSpeak3 Security Level of your TeamSpeak3 Server?"
read stufe
sleep 1
mkdir /home/$name
sleep 1
cd /home/$name
corewaila "Connecting to CDN. (cdn.flareco.net)"
r4p3 "connecting..."
wget http://cdn.flareco.net/R4P3.NET/TS3AudioBot/V1.0/TS3Bot.zip >/dev/null
wget http://cdn.flareco.net/R4P3.NET/TS3AudioBot/V1.0/libopus.so >/dev/null
wget http://cdn.flareco.net/R4P3.NET/TS3AudioBot/V1.0/ffmpeg >/dev/null
wget http://cdn.flareco.net/R4P3.NET/TS3AudioBot/V1.0/youtube-dl >/dev/null
sleep 1
corewaila "Unzipping Packages......"
unzip TS3Bot.zip >/dev/null
chmod 777 InstallOpus
sleep 1
chmod 777 *
corewaila "Installing FFMPEG......"
sudo apt-get install ffmpeg -y
sudo apt-get install youtube-dl -y
r4p3 "Writing in Config......."
rm configTS3AudioBot.cfg
printf "# A space seperated list of all urls the web api should be possible to be accessed with
WebData::HostAddress=
# The port for the api server
WebData::Port=8180
# If you want to start the web api server.
WebData::EnableApi=False
# If you want to start the webinterface server
WebData::EnableWebinterface=False
# The folder to host. Leave empty to let the bot look for default locations.
WebData::WebinterfaceHostPath=
# Path to the config file
RightsManager::RightsFile=rights.toml
# Teamspeak group id giving the Bot enough power to do his job
MainBot::BotGroupId=0
# Generate fancy status images as avatar
MainBot::GenerateStatusAvatar=false
# Defines how the bot tries to match your !commands.
# Possible types: exact, substring, ic3, hamming
MainBot::CommandMatching=ic3
# A youtube apiv3 'Browser' type key
YoutubeFactory::ApiKey=AIzaSyBOqG5LUbGSkBfRUoYfUUea37-5xlEyxNs
# Path to the youtube-dl binary or local git repository
YoutubeFactory::YoutubedlPath=youtube-dl
# The absolute or relative path to the plugins folder
PluginManager::PluginPath=Plugins
# Write to .status files to store a plugin enable status persistently and restart them on launch.
PluginManager::WriteStatusFiles=False
# The default path to look for local resources.
MediaFactory::DefaultPath=
# Allows to enable or disable history features completely to save resources.
HistoryManager::EnableHistory=True
# The Path to the history database file
HistoryManager::HistoryFile=history.db
# Whether or not deleted history ids should be filled up with new songs
HistoryManager::FillDeletedIds=True
# The default volume a song should start with
AudioFramework::DefaultVolume=10
# The maximum volume a normal user can request
AudioFramework::MaxUserVolume=30
# How the bot should play music. Options are: whisper, voice, (!...)
AudioFramework::AudioMode=voice
# The address (and port, default: 9987) of the TeamSpeak3 server
QueryConnection::Address=$server:$port
# | DO NOT MAKE THIS KEY PUBLIC | The client identity
QueryConnection::Identity=
# The client identity security offset
QueryConnection::IdentityOffset=$stufe
# The client identity security level which should be calculated before connecting, or "auto" to generate on demand.
QueryConnection::IdentityLevel=auto
# The server password. Leave empty for none.
QueryConnection::ServerPassword=
# Set this to true, if the server password is hashed.
QueryConnection::ServerPasswordIsHashed=False
# Enable this to automatically hash and store unhashed passwords.
# (Be careful since this will overwrite the 'ServerPassword' field with the hashed value once computed)
QueryConnection::ServerPasswordAutoHash=False
# The path to ffmpeg
QueryConnection::FfmpegPath=ffmpeg
# Specifies the bitrate (in kbps) for sending audio.
# Values between 8 and 98 are supported, more or less can work but without guarantees.
# Reference values: 32 - ok (~5KiB/s), 48 - good (~7KiB/s), 64 - very good (~9KiB/s), 92 - superb (~13KiB/s)
QueryConnection::AudioBitrate=48
# Version for the client in the form of <version build>|<platform>|<version sign>
# Leave empty for default.
QueryConnection::ClientVersion=
# Default Nickname when connecting
QueryConnection::DefaultNickname=$botname
# Default Channel when connectiong
# Use a channel path or '/<id>', examples: 'Home/Lobby', '/5', 'Home/Afk \/ Not Here'
QueryConnection::DefaultChannel=
# The password for the default channel. Leave empty for none. Not required with permission b_channel_join_ignore_password
QueryConnection::DefaultChannelPassword=
# The client badges. You can set a comma seperate string with max three GUID's. Here is a list: http://yat.qa/ressourcen/abzeichen-badges/
QueryConnection::ClientBadges=overwolf=0:badges=
# Path the playlist folder
PlaylistManager::PlaylistPath=Playlists
" >> configTS3AudioBot.cfg
sleep 1
rm rights.toml
sleep 1
printf  '# Rights declaration file
# For more information about syntax and structure see here:
# https://github.com/Splamy/TS3AudioBot/wiki/Rights

"+" = [
	# Basic stuff
	"cmd.help",
	"cmd.pm",
	"cmd.subscribe",
	"cmd.unsubscribe",
	
	# Getting song info
	"cmd.link",
	"cmd.song",
	"cmd.loop",
	"cmd.random",
	"cmd.random.seed",
	"cmd.volume",

	# Conditionals and basic scripting
	"cmd.take",
	"cmd.getmy.*",

	# Changing bot context in the api
	"cmd.bot.use",
]

# Admin rule
[[rule]]
	# Set your admin Group Ids here
	groupid = [ '$group' ]
	# And/Or your admin Client Uids here
	useruid = [ "" ]

	"+" = "*"

# Playing rights
[[rule]]
	# Set Group Ids you want to allow here
	groupid = [ '$group' ]
	# And/Or Client Uids here
	useruid = [ "" ]
	# Or remove groupid and useruid to allow for everyone

	"+" = [
		# Play controls
		"cmd.play",
		"cmd.pause",
		"cmd.stop",
		"cmd.seek",
		"cmd.volume",

		# Playlist management
		"cmd.list.*",
		"cmd.add",
		"cmd.clear",
		"cmd.previous",
		"cmd.next",
		"cmd.random.*",
		"cmd.repeat.*",
		"cmd.loop.*",

	]

	# Remove this if you want to allow users to save playlist locally
	"-" = [ "cmd.list.save" ]
 ' >> rights.toml
corewaila "Config has been written......."
clear
sleep 1
corewaila "Starting TS3AudioBot........."
screen -AmdS $name mono TS3AudioBot.exe
wrhwerfsdf "Fertig!"
r4p3 "All Informations are Saved to => TS3AudioBot_Installer_Notice.txt"
fi

	if [[ $INSTALL1 == "ts3" ]]; then
r4p3 "Whats your TeamSpeak3 Identity?"
read identity
r4p3 "Please give me a Instance Name for your TS3AudioBot!"
read name
r4p3 "Name of the TS3AudioBot on your TeamSpeak?"
read botname
r4p3 "TeamSpeak3 Adresse (ex. 127.0.0.1):"
read server
r4p3 "TeamSpeak3 Port (ex. 9987):"
read port
corewaila "TeamSpeak3 Security Level of your TeamSpeak3 Server?"
read stufe
sleep 1
mkdir /home/$name
sleep 1
cd /home/$name
corewaila "Connecting to CDN. (cdn.flareco.net)"
r4p3 "CONNECTED!"
wget http://cdn.flareco.net/R4P3.NET/TS3AudioBot/V1.0/TS3Bot.zip >/dev/null
wget http://cdn.flareco.net/R4P3.NET/TS3AudioBot/V1.0/libopus.so >/dev/null
wget http://cdn.flareco.net/R4P3.NET/TS3AudioBot/V1.0/ffmpeg >/dev/null
wget http://cdn.flareco.net/R4P3.NET/TS3AudioBot/V1.0/youtube-dl >/dev/null
sleep 1
corewaila "Unzipping Packages......"
unzip TS3Bot.zip >/dev/null
chmod 777 InstallOpus
sleep 1
chmod 777 *
corewaila "Installing FFMPEG..."
sudo apt-get install ffmpeg -y
sudo apt-get install youtube-dl -y
r4p3 "Writting the Config......"
rm configTS3AudioBot.cfg
printf "# A space seperated list of all urls the web api should be possible to be accessed with
WebData::HostAddress=
# The port for the api server
WebData::Port=8180
# If you want to start the web api server.
WebData::EnableApi=False
# If you want to start the webinterface server
WebData::EnableWebinterface=False
# The folder to host. Leave empty to let the bot look for default locations.
WebData::WebinterfaceHostPath=
# Path to the config file
RightsManager::RightsFile=rights.toml
# Teamspeak group id giving the Bot enough power to do his job
MainBot::BotGroupId=0
# Generate fancy status images as avatar
MainBot::GenerateStatusAvatar=false
# Defines how the bot tries to match your !commands.
# Possible types: exact, substring, ic3, hamming
MainBot::CommandMatching=ic3
# A youtube apiv3 'Browser' type key
YoutubeFactory::ApiKey=AIzaSyBOqG5LUbGSkBfRUoYfUUea37-5xlEyxNs
# Path to the youtube-dl binary or local git repository
YoutubeFactory::YoutubedlPath=youtube-dl
# The absolute or relative path to the plugins folder
PluginManager::PluginPath=Plugins
# Write to .status files to store a plugin enable status persistently and restart them on launch.
PluginManager::WriteStatusFiles=False
# The default path to look for local resources.
MediaFactory::DefaultPath=
# Allows to enable or disable history features completely to save resources.
HistoryManager::EnableHistory=True
# The Path to the history database file
HistoryManager::HistoryFile=history.db
# Whether or not deleted history ids should be filled up with new songs
HistoryManager::FillDeletedIds=True
# The default volume a song should start with
AudioFramework::DefaultVolume=10
# The maximum volume a normal user can request
AudioFramework::MaxUserVolume=30
# How the bot should play music. Options are: whisper, voice, (!...)
AudioFramework::AudioMode=voice
# The address (and port, default: 9987) of the TeamSpeak3 server
QueryConnection::Address=$server:$port
# | DO NOT MAKE THIS KEY PUBLIC | The client identity
QueryConnection::Identity=
# The client identity security offset
QueryConnection::IdentityOffset=$stufe
# The client identity security level which should be calculated before connecting, or "auto" to generate on demand.
QueryConnection::IdentityLevel=auto
# The server password. Leave empty for none.
QueryConnection::ServerPassword=
# Set this to true, if the server password is hashed.
QueryConnection::ServerPasswordIsHashed=False
# Enable this to automatically hash and store unhashed passwords.
# (Be careful since this will overwrite the 'ServerPassword' field with the hashed value once computed)
QueryConnection::ServerPasswordAutoHash=False
# The path to ffmpeg
QueryConnection::FfmpegPath=ffmpeg
# Specifies the bitrate (in kbps) for sending audio.
# Values between 8 and 98 are supported, more or less can work but without guarantees.
# Reference values: 32 - ok (~5KiB/s), 48 - good (~7KiB/s), 64 - very good (~9KiB/s), 92 - superb (~13KiB/s)
QueryConnection::AudioBitrate=48
# Version for the client in the form of <version build>|<platform>|<version sign>
# Leave empty for default.
QueryConnection::ClientVersion=
# Default Nickname when connecting
QueryConnection::DefaultNickname=$botname
# Default Channel when connectiong
# Use a channel path or '/<id>', examples: 'Home/Lobby', '/5', 'Home/Afk \/ Not Here'
QueryConnection::DefaultChannel=
# The password for the default channel. Leave empty for none. Not required with permission b_channel_join_ignore_password
QueryConnection::DefaultChannelPassword=
# The client badges. You can set a comma seperate string with max three GUID's. Here is a list: http://yat.qa/ressourcen/abzeichen-badges/
QueryConnection::ClientBadges=overwolf=0:badges=
# Path the playlist folder
PlaylistManager::PlaylistPath=Playlists
" >> configTS3AudioBot.cfg
sleep 1
rm rights.toml
sleep 1
printf  '# Rights declaration file
# For more information about syntax and structure see here:
# https://github.com/Splamy/TS3AudioBot/wiki/Rights

"+" = [
	# Basic stuff
	"cmd.help",
	"cmd.pm",
	"cmd.subscribe",
	"cmd.unsubscribe",
	
	# Getting song info
	"cmd.link",
	"cmd.song",
	"cmd.loop",
	"cmd.random",
	"cmd.random.seed",
	"cmd.volume",

	# Conditionals and basic scripting
	"cmd.take",
	"cmd.getmy.*",

	# Changing bot context in the api
	"cmd.bot.use",
]

# Admin rule
[[rule]]
	# Set your admin Group Ids here
	groupid = [  ]
	# And/Or your admin Client Uids here
	useruid = [ "'$identity'" ]

	"+" = "*"

# Playing rights
[[rule]]
	# Set Group Ids you want to allow here
	groupid = [  ]
	# And/Or Client Uids here
	useruid = [ "'$Identity'" ]
	# Or remove groupid and useruid to allow for everyone

	"+" = [
		# Play controls
		"cmd.play",
		"cmd.pause",
		"cmd.stop",
		"cmd.seek",
		"cmd.volume",

		# Playlist management
		"cmd.list.*",
		"cmd.add",
		"cmd.clear",
		"cmd.previous",
		"cmd.next",
		"cmd.random.*",
		"cmd.repeat.*",
		"cmd.loop.*",

	]

	# Remove this if you want to allow users to save playlist locally
	"-" = [ "cmd.list.save" ]
 ' >> rights.toml
corewaila "Config has been Written......"
clear
sleep 1
corewaila "Starting TS3AudioBot........"
screen -AmdS $name mono TS3AudioBot.exe
wrhwerfsdf "DONE!"
r4p3 "Thanks for using the Script. => The Following Services has been used: cdn.flareco.net, api.flareco.net"
r4p3 "Thanks to @Splamy for the TS3AudioBot."
r4p3 "https://github.com/Splamy/TS3AudioBot"
r4p3 "Closing......."
	fi

fi

