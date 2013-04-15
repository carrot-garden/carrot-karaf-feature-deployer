#!/bin/bash
#
# Copyright (C) 2011-2013 Barchart, Inc. <http://www.barchart.com/>
#
# All rights reserved. Licensed under the OSI BSD License.
#
# http://www.opensource.org/licenses/bsd-license.php
#


echo "###########################"

user="karaf"
echo "user=$user"

apps="var/apps"
echo "apps=$apps"

command="$1"
echo "command=$command"

echo "tag=$tag"
echo "instance=$instance"
echo "server=$server"
echo "note=$note"

validate_parameters() {
	
	echo "### validate_parameters"
	
	if [ -z "$tag" ] ; then
	   echo "### error: 'tag' is missing"
	   exit -1
	fi
	if [ -z "$instance" ] ; then
	   echo "### error: 'instance' is missing"
	   exit -1
	fi
	if [ -z "$server" ] ; then
	   echo "### error: 'server' is missing"
	   exit -1
	fi
	if [ -z "$note" ] ; then
	   echo "### error: 'note' is missing"
	   exit -1
	fi

	if [ "master" == "$tag" ] ; then
	   echo "### error: 'tag' is 'master' ; you must release project first to create version tags"
	   exit -1
	fi
			
}



ensure_user_account() {
	
	echo "### ensure_user_account"

}

uninstall_application() {
	
	echo "### uninstall_application"
	
}

publish_application() {
	
	echo "### publish_application"
	
}

install_application() {
	
	echo "### install_application"
	
}


install_application() {
	
	echo "### install_application"
	
	ensure_user_account
	
	uninstall_application
	
	publish_application
	
	install_application
	
}

case "$command" in
	validate)  
		validate_parameters
	;;
	install)  
		install_application
	;;
		*) 
		echo "unknown command"
		exit -1
	;;
esac

echo "###########################"
