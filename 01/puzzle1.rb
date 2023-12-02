file_data = File.read("input.txt");
calibration = [];

calibration = file_data.split(/\n/);

total=0;
chars =[];
calibration_number = 0;

calibration.each do |line|
    x=line.scan(/\d/).join("");
    calibration_number=x[0].to_i*10 + x[-1].to_i;
    total = total+calibration_number
end

puts calibration_number;