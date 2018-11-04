class AppointmentReminderJob
  include SuckerPunch::Job
  workers 5

  def perform(appointments, message, hospital_reminder)
    # raise NotImplementedError
    begin 
      ActiveRecord::Base.connection_pool.with_connection do
        appointments.each do |appointment|
          @http = Net::HTTP.new('api.budgetsms.net')
          @http = @http.start  
          20.times do |t|  
            # https://api.budgetsms.net/sendsms/
            # https://api.budgetsms.net/testsms
            url = "https://api.budgetsms.net/testsms/?username=nsoseka&userid=15734&handle=66a34c76669b3a0b78e7ae6bbca7dfd1&credit=1&price=1&msg=#{message}&from=237councils&to=#{"237" + appointment.contact}"
            req = Net::HTTP::Get.new(URI.encode(url))
            # req.basic_auth USERNAME, API_KEY
            res = @http.request(req)
            puts res.body, res, res.code, res.message
          end
        end

        hospital_reminder = hospital_reminder.save
      end
    rescue
      hospital_reminder.destroy 
    end
  end
end

