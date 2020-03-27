require_relative 'subject'
class Gym 
  include Subject
  attr_reader :type, :pTName, :date, :time

      def initialize(type, pTName, date, time)
        super()
        @type = type
        @pTName = pTName
        @date = date
        @time = time
       
      end

      def time=(new_time)
        @time = new_time
        notify_observers(self)
      end

end



