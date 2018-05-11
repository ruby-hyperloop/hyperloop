require 'minitest'

def Minitest.run args = []
  # PORT: removed
  #self.load_plugins

  options = process_args args

  reporter = Minitest::CompositeReporter.new
  reporter << Minitest::SummaryReporter.new(options[:io], options)
  reporter << Minitest::ProgressReporter.new(options[:io], options)

  self.reporter = reporter # this makes it available to plugins
  # PORT: removed
  #self.init_plugins options
  self.reporter = nil # runnables shouldn't depend on the reporter, ever

  reporter.start
  __run reporter, options
  # PORT: removed
  #self.parallel_executor.shutdown
  reporter.report

  # PORT: modified
  reporter.passed?
  # `window.OPAL_TEST_EXIT_STATUS = #{reporter.passed?}`
end

at_exit { exit Minitest.run }
