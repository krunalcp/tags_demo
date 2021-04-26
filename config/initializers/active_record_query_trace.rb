if Rails.env.development?
  ActiveRecordQueryTrace.enabled = true
  ActiveRecordQueryTrace.lines = 0

  ActiveRecordQueryTrace.level = :custom
  require "rails/backtrace_cleaner"
  ActiveRecordQueryTrace.backtrace_cleaner = Rails::BacktraceCleaner.new.tap do |bc|
    bc.remove_filters!
    bc.remove_silencers!
    bc.add_silencer { |line| line =~ /\b(active_record_query_trace|active_support|active_record|irb|bootsnap|spring|rails|thor|rubygems|2.6.0|active_model)\b/ }
  end
end
