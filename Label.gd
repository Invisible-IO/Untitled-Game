extends Label

var coins = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	text = str(coins)
	
func _on_coin_collected():
	coins = coins + 1
	print("Wow")
	_ready()
