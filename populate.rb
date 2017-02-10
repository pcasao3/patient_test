require 'mysql2'
require 'csv'
require 'time'

# Set up mysql configuration
db = Mysql2::Client.new(:host => ENV['GSDB_IP'], :username => ENV['GSDB_USER'], :password => ENV['GSDB_KEY'], :database => "gs_db")

db.query("TRUNCATE fhcn_patients")

# Open the CSV file
CSV.foreach("patient_data.csv") do |line|
	
	# id
	id = line[0]

	# ufname
	fname = line[1]

	# uminitial
	mname = line[2]

	# ulastname
	lname = line[3]

	# ptDob
	ptDob = line[4].split("/")
	tMon = ptDob[0]

	if tMon.length < 1
		tMon = "0#{tMon}"
	end

	tDay = ptDob[1]

	if tDay.length < 1
		tDay = "0#{tDay}"
	end

	tYear = ptDob[2]

	tDate = "#{tYear}-#{tMon}-#{tDay}"

	# pcp
	pcp = line[5]

	# Write insert
	insert_q = "INSERT INTO fhcn_patients (id, ufname, uminitial, ulastname, ptDob, pcp, created_at, updated_at) VALUES(#{id}, '#{fname}', '#{mname}', '#{lname}', '#{tDate}', #{pcp}, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)"

	db.query(insert_q)

end
