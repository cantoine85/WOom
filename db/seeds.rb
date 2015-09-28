# Destroy experiences
Experience.destroy_all

# Create 3 users
users = [
  {
    first_name: "Claire",
    email: "claire.antoine@gmail.com",
    password: "password"
  },

  {
    first_name: "Gaspard",
    email: "gaspard.vorilhon@gmail.com",
    password: "password"
  },

  {
    first_name: "Guillaume",
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

#CATEGORIES = ['sweetlife', 'culture', 'cinéma', 'balade', 'la vie en rose', 'spectacle', 'musique', 'voyage', 'exposition', 'sensation', 'fun', 'sport', 'plaisir', 'spiritualité', 'food', 'engagement']

experiences = [
  {
    title: "Faire de la randonnée dans le cantal",
    category: "balade",
    status: "done"
  },
  {
    title: "Découvrir l'église notre dame",
    category: "balade",
    status: "to do"
  },

  {
    title: "Déguster un tournedos à l'avenue",
    category: "food",
    status: "done"
  },
  {
    title: "Dévaler le Tarn en Kayak",
    category: "balade",
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

