<?php

/*

crontab
*	*	*	*	*	wget -O /dev/null "http://yourdomain.com/path/to/this/file.php?token=YOUR_TOKEN"

*/

session_start();
require_once 'ts3admin.class.php';
$website_name = "FlareAPI"; //Website Name
$ts3ip = "127.0.0.1"; //TS3IP
$ts3port = "9987"; //TS3Port
$ts3qport = "10011"; //TS3Query Port
$ts3user = ""; //TS3User Login
$ts3pass = ""; //TS3Query Login

//Your Access Token for Automation!
$myToken = "";

$whitelistedIPs = array("5.XXX.XXX.XXX");

if(isset($_GET['token'])){
	$token = $_GET['token'];
	if($token == $myToken){
		$tsAdmin = new ts3admin($ts3ip, $ts3qport);
		
		if($tsAdmin->getElement('success', $tsAdmin->connect())) {
			$tsAdmin->login($ts3user, $ts3pass);
			$tsAdmin->setName("FlareAPI");
			$tsAdmin->selectServer($ts3port);
			$clients = $tsAdmin->clientList("-uid -ip -groups -info");
			
			foreach($clients['data'] as $client) {
				$cname = $client['client_nickname'];
				$ip = $client['connection_client_ip'];
				$uid = $client['client_unique_identifier'];
				$groups = $client['client_servergroups'];
				$version = $client['client_version'];
				$platform = $client['client_platform'];
				$clid = $client['clid'];
				$cid = $client['cid'];
				
				if (in_array($ip, $whitelistedIPs)){
					$skipped = "YES";
				} else {
					$gather = file_get_contents("http://v1.nastyhosts.com/$ip");
					$gather = json_decode($gather);
					if(!$gather->status){
						$wrong = "OK";
					} else {
						$can = $gather->suggestion;
						if($can == "deny"){
							if($tsAdmin->clientKick($clid, 'server', 'The Usage of VPNs is not allowed!')) {
								echo "KICKED! -> ".$cname."</br>";
							}
						}
					}
				}
				
				
			}
			echo "RUN COMPLETED! ".time();
			exit;
		}
		
	} else {
		die("NOC");
	}
} else {
	header('HTTP/1.0 404 Not Found');
}
?>
