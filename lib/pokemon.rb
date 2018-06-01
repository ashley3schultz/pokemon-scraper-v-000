class Pokemon
attr_accessor :name, :type, :db, :id, :hp

  def initialize(name:name, type:type, db:db, id:id, hp:hp = 60)
    @name = name
    @type = type
    @id = id
    @db = db
    @hp = hp
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(num, db)
    p = db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?",num)
    self.new(name: p[0][1], type: p[0][2], db: db, id: p[0][0])
  end

  def alter_hp(num, dp)
    db.execute("UPDATE pokemon SET hp = ?",num)
  end
end
