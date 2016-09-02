shop = {
	owner:new Person "Jess"
	#animals:[
	#	name:"Keylsey"
	#	type:"dog"
	#	age:2
	#	bread:"Labrador"
	#	description:"A sweet and loyal dog."
	#]
	#把animal类化
	animals:Animal.loadSeedData()
}
nameElement = document.getElementById("owner_name")
nameElement.innerHTML = shop.owner.possessiveName()
document.title ="#{shop.owner.possessiveName()} Pet shop"

for pet,i in shop.animals when pet.name is chosenPetName
	[chosenPetName,fullListIndex] = [pet,i]

animalBehaviors = (animal) ->
	switch  animal.type
		when "cat" then ["meow",null]
		when "dog" then ["bark","wag"]
		when "rabbit" then [null,"hop hop"]
		when "horse","donkey"
			["neigh",null]
		else [null,null]