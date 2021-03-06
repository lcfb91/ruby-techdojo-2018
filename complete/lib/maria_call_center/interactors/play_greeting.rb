require 'maria_call_center/log'
require 'maria_call_center/models/say'

module MariaCallCenter
  module Interactors
    class PlayGreeting
      include Log

      def initialize(_environment)
        @message = 'Welcome to Maria Flowershop contact center'.freeze
      end

      def call
        Models::Say.new(message: @message)
      end
    end
  end
end
