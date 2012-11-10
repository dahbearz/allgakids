require 'roo'

def load_dummy
  data = Excelx.new('agk_app_data_draft.xlsx')
  data.default_shee = data.sheets.first

  2.upto(data.last_row) do |line|
    Business.create(
      :type_of_care     => data.cell(line, 'A'),
      :name             => data.cell(line, 'C'),
      :email            => data.cell(line, 'F'),
      :name_of_contact  => data.cell(line, 'L'),
      :max_age          => data.cell(line, 'J'),
      :min_age          => data.cell(line, 'K'),
      :vacancies        => data.cell(line, 'P'),
      :website          => data.cell(line, 'Q'),
      :location         => Location.find(:address => data.cell(line,'O'), :state => data.cell(line,'N'), :city => data.cell(line,'D'))
    )
  end
end

def load_locations
  puts true
  data = Excelx.new('agk_app_data_draft.xlsx')
  data.default_shee = data.sheets.first

  2.upto(data.last_row) do |line|
    Location.create(
      :city     =>    data.cell(line,'D'),
      :county   =>    data.cell(line, 'E'),
      :state    =>    data.cell(line, 'N'),
      :zipp     =>    data.cell(line, 'R'),
      :address  =>    data.cell(line, 'O')
    )
  end
end
