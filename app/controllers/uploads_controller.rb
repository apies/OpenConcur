class UploadsController < ApplicationController
  require 'csv'
  require 'date'
  
  
  #upload taking place here
  def new
    uploaded_csv = params[:csv]
    upload_comment = params[:upload_comment]
    #csv_date = File.open(@csv)  
    if uploaded_csv
      upload_csv(uploaded_csv, upload_comment)
    end
  end
  
  
  def upload_csv(uploaded_csv, upload_comment)
    short_name = Rails.root.join('public', uploaded_csv.original_filename)
    File.open(short_name, 'w') do |file|
      file.write(uploaded_csv.read)
    end
    proccess_csv(short_name, upload_comment)
      
    File.delete(short_name)
  end
  
  def get_header_keys(row_array)
    row_hash = {}
    i = 0
    for row in row_array
      row_hash[row] = i
      i += 1
    end
    header_keys = row_hash
    
  end
  
  def make_reports(charges, upload_comment)
    reports = charges.group_by { |charge| charge.cardholder }
    reports.each do | cardholder, report |
      report_sum = report.to_a.inject(0.0){|result, charge| charge.amount + result}
      report_date = report.to_a.max_by {|charge| charge.date_of_charge} 
      report_charges = report.sort_by(&:date_of_charge)
      cardmember_name = report.first.cardholder
      Report.create(:user_id => 1, :cardholder => cardmember_name, :total_amount => report_sum, :report_date => report_date, :charges => report_charges )
    end
  end
  
  
  
  def proccess_csv(csv_file, upload_comment)
    index = 0
    charges = []
    upload_comment = upload_comment
    row_count = 0
    header_key = {}
    CSV.foreach( csv_file , :headers => false) do |row|
      if row_count == 0
        header_key = get_header_keys(row)
        row_count += 1
      else
        stringdate = Date.strptime(row[header_key["PROCESS_DATE"]], '%m-%d-%y')
        amount = row[header_key["BILLING_AMOUNT"]].to_f 
   	    dbcr = row[header_key["DB\\CR_INDICATOR"]] 
   	    case dbcr
 	      when "3"
 	        real_amount = 0
        when "2"
          real_amount = -amount
        when "4"
          real_amount = 0
        when "1"
          real_amount = amount
        end #end case 
        if (row[header_key["CARDMEMBER_NAME"]] != "" && row[header_key["CARDMEMBER_NAME"]] != nil )
          charge = Charge.new(:cardholder => row[header_key["CARDMEMBER_NAME"]], :date_of_charge => stringdate, :description => row[header_key["CHARGE_DESCRIPTION_LINE1"]], 
           :amount => real_amount,:reference_number => row[header_key["CHARGE_DESCRIPTION_LINE2"]], :air_route => row[header_key["AIR_ROUTING"]], 
           :air_traveler => row[header_key["AIR_PASSENGER_NAME"]], :upload_comment => upload_comment )
          charges[row_count -1] = charge
          row_count += 1
        end#end if row
      end  #end if row_count == 0
   end #end CSV
   make_reports(charges, upload_comment)  
  end#end method



end


