class Pokemon
attr_accessor :name, :type, :db, :id, :hp

  def initialize(name:name, type:type, db:db, id:id)
    @name = name
    @type = type
    @id = id
    @db = db
    @hp = 60
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(num, db)
    p = db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?",num)
    self.new(name: p[0][1], type: p[0][2], db: db, id: p[0][0])
  end

  def alter_hp(num = 60, dp)
    db.execute("UPDATE pokemon SET hp = '60' WHERE id = ?",num)
  end
end
