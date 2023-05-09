# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Logging' do
  describe 'Options' do
    it 'logs things' do
      logger = Selenium::WebDriver.logger

      logger.level = :debug

      logger.output = 'selenium.log'

      logger.ignore(:jwp_caps, :logger_info)
      logger.allow(%i[selenium_manager example_id])

      logger.warn('this is a warning', id: :example_id)
      logger.info('this is useful information', id: :example_id)
      logger.debug('this is detailed debug information', id: :example_id)
    end
  end
end
