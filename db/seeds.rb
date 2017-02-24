events = [
  ["Tsunami", "It's a giant wave!", "Prepare your people for the worst.", "Order and evacuation", "they'll figure it out", "Geography"]

]

events.each do |name, description, choice1, choice2, choice3, nattr|
  Event.create(name: name, description: description, choice1: choice1, choice2: choice2, choice3: choice3, nattr: nattr)
end
#
# [{name: "Market Crash", description: "The economy has collapsed.", choice1: "Start bartering with neighbor nations", choice2: "Save. Save. Save.", choice3: "Buy stocks", nattr: "Economy"}],
# [{name: "New Technology Invented", description: "Someone in your nation just developed the very first iPhone!", choice1: "Invest in them", choice2: "Invest in the competitor", choice3: "Buy a bunch of knockoffs", nattr: "Economy"}]
