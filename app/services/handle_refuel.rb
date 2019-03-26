class HandleRefuel

  def initialize(params)
    @r = RefuelInfo.new
    @r.dated_on         = fix_date(params[:dated_on])
    @r.vehicle          = params[:vehicle]
    @r.driver           = params[:driver]
    @r.refuel_location  = params[:refuel_location]
    @r.liters_of_fuel   = params[:liters_of_fuel].to_i
    @r.odometer_reading = params[:odometer_reading].to_i
    @r.save
  end

  def output
    @r
  end

  def fix_date(not_date)
    Time.at(not_date.to_i)
  rescue
    nil
  end

end
