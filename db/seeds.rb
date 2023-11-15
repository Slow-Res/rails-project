


15.times do |index|
    Course.create!(
      title: "Course #{index + 1}",
      description: "Description for Course #{index + 1}",
      code: "CODE#{index + 1}",
      status: rand(2), # Random status between 0 and 2
      capacity: rand(20..50), # Random capacity between 20 and 50
      start_date: Time.now + rand(1..30).days, # Random start date within the next 30 days
      end_date: Time.now + rand(31..60).days # Random end date between 31 and 60 days from now
    )

end


