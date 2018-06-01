class Pokemon
attr_accessor :name, :type, :db, :id

  def initialize(name:name, type:type, db:db, id:id)
    @name = name
    @type = type
    @id = id
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(num, db)
    p = db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?",num)
    self.new(p[0][1], p[0][2], db, p[0][0])
  end
end
