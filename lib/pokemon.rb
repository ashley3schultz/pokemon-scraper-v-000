class Pokemon
attr_accessor :name, :type, :db, :id

  def initialize(name:name, type:type, db:db, id:id)
    @name = name
    @type = type
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(num, db)
    db.execute("SELECT * FROM pokemon WHERE pokemon.id = num")
  end
end
