extends Panel

# Load the classes themselves from the NativeScripts
onready var Averager = preload("res://averager.gdns")
onready var Scaler = preload("res://scaler.gdns")

# The instances of our native classes
var averager
var scaler

func _ready():
	# Instantiate the classes
	averager = Averager.new()
	scaler = Scaler.new()

func _on_addButton_pressed():
	# Call a method from the instance
	averager.addNumber($value.value)

func _on_averageButton_pressed():
	$results.add_item(str(averager.average()))

func _on_scaleButton_pressed():
	scaler.scaleFactor = $scale.value
	var val = $value.value
	$results.add_item(str("Scaled value: ", scaler.scale(val)))
