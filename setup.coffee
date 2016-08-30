shop = {
	owner:{ name: "He" }
	animals:[

	]
}
nameElement = document.getElementById("owner_name")
nameElement.innerHTML = shop.owner.name
document.title =shop.owner.name+"'s Pet shop"

for pet,i in shop.animals when pet.name is chosenPetName
	[chosenPetName,fullListIndex] = [pet,i]