power = true
mute = false

if power is on
  playingMusic = yes if mute is off
else
  playingMusic = no

language =[
  "english",
  "spanish",
  "french",

]
console.log language[1];
start = 0
end = 2000
bigNumbers = [start..end]

console.log "========================================>";

animals = ["dog","cat","bird"]
for animal in animals
  console.log animal;

animals2 = ["dog","cat","bird"]
console.log animal for animal in animals2;