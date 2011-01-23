Repeated::Job
=============

Repeated::Job was written by David Dollar, original here - https://github.com/ddollar/repeated_job

Changes
=======

In this fork, these are the interesting changes:

* Changed scheduling to round to nearest interval.  So, tasks that run every 5 minutes will actually run on the :00's and :05's - instead of 5 mins from whenever your app server happens to have started.
* Changed the rake task that gets run to 'repeated' instead of 'cron' - I want to preserve the ability to run 'cron' on heroku platform unrelated to these repeated jobs.
* Updated code to avoid some Delayed::Job warnings.

Overview
========

Repeated::Job will use Delayed::Job to call `rake repeated` on your app at an interval you specify.

Internally, it's just constantly scheduling Delayed Jobs to call itself, and then does nothing but call your rake tasks and schedule itself again.

Installation
============

    script/plugin install git://github.com/mjankowski/repeated_job.git

Setup
=====

    ENV["REPEATED_JOB_INTERVAL"] = 5    # in minutes, defaults to 5
    ENV["REPEATED_JOB_PRIORITY"] = 0    # Delayed::Job priority, defaults to 0

Copyright (c) 2010 David Dollar, released under the MIT license
