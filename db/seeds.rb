# Destroy experiences
Experience.destroy_all

# Create 3 users
users = [
  {
    email: "claire.antoine@gmail.com",
    password: "password"
  },

  {
    email: "gaspard.vorilhon@gmail.com",
    password: "password"
  },

  {
    email: "guillaume.vorihon@gmail.com",
    password: "password"
  }
]

users.each do |user|
  user = User.new(user)
  if user.save
    puts user.email
  end
end

# Create 4 experiences
  # validates :title, :user_id, :initial_experience_id, :status, presence: true
  # validates :title, length: { minimum:3}

experiences = [
  {
    title: "Faire de la randonnée dans le cantal",
    status: "done"
  },
  {
    title: "Découvrir l'église notre dame",
    status: "to do"
  },

  {
    title: "Déguster un tournedos à l'avenue",
    status: "done"
  },
  {
    title: "Dévaler le Tarn en Kayak",
    status: "done"
  }

]

experiences.each do |experience|
  exp = Experience.new(experience)
  exp.user = User.all.sample
  if exp.save
    puts exp.title
  else
    exp.errors.full_messages.each do |message|
      puts message
    end
  end
end

