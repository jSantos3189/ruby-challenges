class Campaing
  attr_accessor :name, :type_pet, :name_pet
  attr_reader :total_cat, :total_dogs, :name_camaping, :cat_registered, :dog_registered

  def initialize(name_camaping)
    @name_camaping = name_camaping
    @total_cat = 0
    @total_dogs = 0
    @cat_registered = []
    @dog_registered = []
  end

  def preregister(name, type_pet, name_pet)
    if type_pet == "cat"
      if @total_cat > 29
        puts "We are at the limit of the cats planned for the campaign."
      else
        @total_cat += 1
        @cat_registered << (name_pet + " - " + name)
        puts "Your pet {name_pet} has been registered"
      end
    elsif type_pet == "dog"
      if @total_cat > 29
        puts "We are at the limit of the dogs planned for the campaign."
      else
        @total_dogs += 1
        @dog_registered << (name_pet + " - " + name)
        puts "Your pet {name_pet} has been registered"
      end
    else
      puts "This campaign is only for dogs and cats."
    end
  end

  def show_pet_registered
    puts @name_camaping
    puts "cats registered " + @total_cat.to_s
    puts @cat_registered

    puts "dogs registered " + @total_dogs.to_s
    puts @dog_registered
  end
end

c = Campaing.new("Esterelizations")
c.preregister("santos", "cat", "pirata")
c.preregister("santos", "cat", "chicharron")
c.preregister("jesus", "dog", "pirata")
c.show_pet_registered
