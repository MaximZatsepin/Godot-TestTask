extends Control

var countOfCoins

# Called when the node enters the scene tree for the first time.
func _ready():
	$music.play()
	countOfCoins = $Maps/Coins
	$WinGame.set_visible(false)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if countOfCoins.get_child_count() == 0:
		$WinGame.set_visible(true)
	pass


func _on_music_finished():
	$music.play()
	pass # Replace with function body.
