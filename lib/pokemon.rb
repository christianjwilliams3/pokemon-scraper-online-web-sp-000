class Pokemon

  attr_accessor  :id, :name, :type, :db

    def initialize(keywords)

    end

    def self.save(name, type, db)
      db.execute("INSERT INTO pokemon(name, type) VALUES (?, ?)",name, type)
    end

    def self.find(name, type, db)
      pokemon = db.execute("SELECT FROM pokemon where id = ?", [num])
      new_pokemon = self.new(pokemon)
      new_pokemon.id = pokemon [0][0]
      new_pokemon.name = pokemon [0][1]
      new_pokemon.type = pokemon [0][2]
      return new_pokemon 
end
