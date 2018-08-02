class TimeHelper

  def self.actual_open_time
    Restaurant.all.each do |restaurant|
      restaurant.opening_time - 18000
    end
  end


  def self.actual_close_time
    Restaurant.all.each do |restaurant|
      restaurant.closing_time - 18000
    end
  end
end
