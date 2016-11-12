major_minor_list = ["History", "Art", "Philosophy", "Computed Science", "Biology", "Buisiness", "Education"]

30.times do
  p = Person.create(
    avatar: Faker::Avatar.image,
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone: Faker::PhoneNumber.phone_number,
    role: ["teacher", "student"].sample,
    title: Faker::Name.prefix
  )
  if p.role == 'teacher'
    3.times do
      Experience.create(
        school: Faker::University.name,
        degree: ["B.S.", "B.A.", "M.A.", "M.S.", "PhD", "EdD"].sample,
        major: major_minor_list.sample,
        minor: major_minor_list.sample,
        person: p
      )
    end
  else
    5.times do
      Course.create(
        title: major_minor_list.sample,
        description: Faker::Hipster.paragraph,
        credit_hours: 3,
        person: p
      )
    end
  end
end
