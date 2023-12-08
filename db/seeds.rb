
users = [
  { login: 'user1', password: 'glbrcpass' },
  { login: 'user2', password: 'glbrcpass' },
  { login: 'user3', password: 'glbrcpass' }
]

users.each do |user|
  User.find_or_create_by(login: user[:login]) do |u|
    u.password = user[:password]
  end
end

# Apps
apps = [
  { name: "Google", description: "Search Engine", color: "Red", default_status: true, link: "http://www.google.com", shape: "shape-circle" },
  { name: "Wisc", description: "UW", color: "Blue", default_status: false, link: "http://www.wisc.edu", shape: "shape-diamond" },
  { name: "GLBRC", description: "Great Lakes Bioenergy Research Center", color: "Yellow", default_status: true, link: "http://www.glbrc.org", shape: "shape-triangle" },
  { name: "WEI", description: "Wisconsin Energy", color: "Green", default_status: false, link: "https://energy.wisc.edu/", shape: "shape-square" },
  { name: "Twitter", description: "Twitter", color: "Purple", default_status: false, link: "https://twitter.com/", shape: "shape-diamond" }
]

apps.each do |app|
  App.find_or_create_by(name: app[:name]) do |a|
    a.description = app[:description]
    a.color = app[:color]
    a.default_status = app[:default_status]
    a.link = app[:link]
    a.shape = app[:shape]
  end
end
