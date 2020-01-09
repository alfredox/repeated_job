require "active_support/time"
require "rake"

module Repeated
  class Job

    attr_reader :interval, :priority

    def initialize
      @interval = (ENV["REPEATED_JOB_INTERVAL"] || 5).to_i   # minutes
      @priority = (ENV["REPEATED_JOB_PRIORITY"] || 0).to_i
    end

    def perform
      schedule_next
      Rake::Task["repeated"].execute
    end

    def schedule_next
      Delayed::Job.where("handler like '%Repeated::Job%'").delete_all
      Delayed::Job.enqueue self, :priority => priority, :run_at => rounded_time(interval.minutes).getutc
    end

    def rounded_time(seconds = 60)
      Time.at((Time.now.to_f / seconds).ceil * seconds)
    end

  end
end
