namespace :dummy do
  require 'csv'
  task :load_dummy => :environment do
    file = 'db/agk_app_data_draft.csv'

    CSV.foreach(file, :headers => true) do |row|
      location = Location.find_by_address_and_state_and_city(row[14], row[13], row[3])
      Business.create(
        :type_of_care     => row[0],
        :name             => row[2],
        :email            => row[5],
        :name_of_contact  => row[11],
        :max_age          => row[9],
        :min_age          => row[10],
        :vacancies        => row[15],
        :website          => row[16],
        :location_id         => location.id
      )
    end
  end

  task :load_locations => :environment do
    file = 'db/agk_app_data_draft.csv'
      CSV.foreach(file, :headers => true) do |row|
        Location.create({ :city => row[3], :county => row[4], :state => row[13], :zipp => row[17], :address => row[14] })
      end
  end

  task :replace_names => :environment do
    Business.where(:type_of_care => "Family Child Care").each do |business|
        business.name = business.name_of_contact
        puts business.name
        business.save
    end
  end

  task :all => [:load_locations, :load_dummy, :replace_names]
end
