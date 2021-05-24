extends Node

var emptyArray = []
var simpleArray = [1,2,3,4,5]

# Called when the node enters the scene tree for the first time.
func _ready():
	
	# sub-arrays
	var subarray = [[1,2],[3,4]]
	print('subarray: ', subarray[1][0])
	
	# add items to the front or back of the array
	simpleArray.push_front(0) # [0,1,2,3,4,5]
	simpleArray.push_back(6) # [0,1,2,3,4,5,6]
	print('simpleArray after push: ', simpleArray) # [0,1,2,3,4,5,6]
	
	# pop items from the front or back of the array
	var front = simpleArray.pop_front() # simpleArray = [1,2,3,4,5,6], front = 0
	var back = simpleArray.pop_back() #simpleArray = [1,2,3,4,5], back = 6
	
	print('simpleArray after pop: ', simpleArray)
	print('front: ', front)
	print('back: ', back)
	
	# clear array
	simpleArray = [] 
	simpleArray.clear()
	simpleArray.resize(0)
	
	print('simpleArray after clear: ', simpleArray)
	
	###
	# duplicate array(deep copy)
	###
	
	# add a sub-array to arrays
	var newArray = [1,2]
	simpleArray.push_back(newArray)
	
	# duplicate
	var deepCopy = simpleArray.duplicate(true)
	
	# edit sub-array
	newArray.push_back(3)
	
	# a change in the sub-array will have zero effect on duplicateArray
	print('deepCopySimpleArray: ', deepCopy) # [[1,2]]
	print('simpleArray: ', simpleArray) # [[1,2,3]]
	
	
	###
	# duplicate array(shallow copy)
	###
	
	# add a sub-array to arrays
	var anotherArray = [1,2]
	simpleArray.clear() # clear the array, same as arrays = []
	simpleArray.push_back(anotherArray)
	
	# duplicate
	var shallowCopy = simpleArray.duplicate(false)
	
	# edit suubarray
	anotherArray.push_back(3)
	
	# a change in the sub-array will have zero effect on duplicateArray
	print('shallowCopySimpleArray: ', shallowCopy) # [[1,2,3]]
	print('simpleArray: ', simpleArray) # [[1,2,3]]
	
	# get the length of an array
	var arraySize = simpleArray.size()
	print('size of simpleArray: ', arraySize)
	
	# You can resize an array to be bigger or smaller with resize()
	simpleArray.resize(0) # you will shorten and delete elements from array
	simpleArray.resize(10) # you will lengthen/grow the element by 10 and add the value null
	print('resized simpleArray: ', simpleArray)
	
	pass
