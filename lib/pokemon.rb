class Pokemon
attr_reader :name, :type, :db, :id

  def initialize(name:name, type:type, db:db, id:id)
    @name = name
    @type = type
    @id = id
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(num, db)
    db.execute("SELECT pokemon.* FROM pokemon")
  end

  def self.id 
  end 
end
