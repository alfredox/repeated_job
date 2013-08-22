Repeated::Job
=============

Gem for running repeated task, using DelayedJob.

Repeated::Job was written by David Dollar, original here - https://github.com/ddollar/repeated_job

Modified by Matt Jankowski: https://github.com/mjankowski/repeated_job

Changes
=======

Transform the original plugin into a gem.


Overview
========

Repeated::Job will use Delayed::Job to call `rake repeated` on your app at an interval you specify.

Internally, it's just constantly scheduling Delayed Jobs to call itself, and then does nothing but call your rake tasks and schedule itself again.

Installation
============

In bundler:

    gem 'repeated_job', :git => 'git://github.com/alfredox/repeated_job.git'

Setup
=====

    ENV["REPEATED_JOB_INTERVAL"] = 5    # in minutes, defaults to 5
    ENV["REPEATED_JOB_PRIORITY"] = 0    # Delayed::Job priority, defaults to 0
    
In order to use the script/delayed_job, should add the following code to the script

    require 'rake'
    YourApplicationName::Application.load_tasks 


Copyright (c) 2013 Alfredo Cruz, released under the MIT license
