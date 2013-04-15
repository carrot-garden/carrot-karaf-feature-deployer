/**
 * Copyright (C) 2011-2013 Barchart, Inc. <http://www.barchart.com/>
 *
 * All rights reserved. Licensed under the OSI BSD License.
 *
 * http://www.opensource.org/licenses/bsd-license.php
 */
def env = System.getenv()

def version = env[ 'version' ]
def instance = env[ 'instance' ]
def server = env[ 'server' ]
def note = env[ 'note' ]

println "version  = ${version}"
println "instance = ${instance}"
println "server   = ${server}"
println "note     = ${note}"

if ( version == null) throw new Exception('missing version')
if ( instance == null) throw new Exception('missing instance')
if ( server == null) throw new Exception('missing server')
if ( note == null) throw new Exception('missing note')

