# puppetnode

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with puppetnode](#setup)
    * [Setup requirements](#setup-requirements)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Limitations - OS compatibility, etc.](#limitations)

## Description

Simple puppet server and agent iplementation using foreman-puppet as module also use for agent.

## Setup

add this line to Puppetfile

mod "Gril258/puppetnode",
  :git => "git://github.com/Gril258/puppetnode.git"


### What puppetnode affects **OPTIONAL**

puppetnode::agent - configure agent on node
puppetnode::master - create puppetmaster using puppet-collection release and puppetserver implementation support debian jessie only

### Setup Requirements **OPTIONAL**

debian jessie for puppet master
debian wheezy jessie for agent

## Usage

for server

include ::puppetnode::master

for agent

  class { 'puppet_agent':
    server      => "puppet.infra.${location}", # example internal network server hostname by schema "${machine_type}.${env}.${location}" # $env != $environment
    runinterval => $puppet_agent_run_interval # n of s to set --configtimeout
  }


## Limitations

  its fo specific purpose only, do not recommed for other usage.

