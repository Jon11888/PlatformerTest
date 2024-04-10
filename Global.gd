extends Node2D
class_name Global

var oneX = 0.0
var twoX = 0.0
var threeX = 0.0
var fourX = 0.0
var fiveX = 0.0
var sixX = 0.0
var sevenX = 0.0
var eightX = 0.0
var nineX = 0.0
var tenX = 0.0
var elevenX = 0.0
var twelveX = 0.0
var thirteenX = 0.0
var fourteenX = 0.0
var fifteenX = 0.0
var sixteenX = 0.0
var seventeenX = 0.0
var eighteenX = 0.0
var ninteenX = 0.0
var twentyX = 0.0
var twentyoneX = 0.0
var twentytwoX = 0.0
var twentythreeX = 0.0
var twentyfourX = 0.0
var twentyfiveX = 0.0

var oneY = 0.0
var twoY = 0.0
var threeY = 0.0
var fourY = 0.0
var fiveY = 0.0
var sixY = 0.0
var sevenY = 0.0
var eightY = 0.0
var nineY = 0.0
var tenY = 0.0
var elevenY = 0.0
var twelveY = 0.0
var thirteenY = 0.0
var fourteenY = 0.0
var fifteenY = 0.0
var sixteenY = 0.0
var seventeenY = 0.0
var eighteenY = 0.0
var ninteenY = 0.0
var twentyY = 0.0
var twentyoneY = 0.0
var twentytwoY = 0.0
var twentythreeY = 0.0
var twentyfourY = 0.0
var twentyfiveY = 0.0

var averageX = 0.0
var averageY = 0.0

var playerX = 0.0
var playerY = 0.0

var staticAngle = 90.0
var playerAngle = 0.0

var playerSpeedX = 0.0
var playerSpeedY = 0.0
var absPlaySpeed = 0.0

var playSpeedPercent = 0.0
var endAngle = 0.0

var adjustedTarget = 0.0

func _process(_delta):
	averageX = ((oneX + twoX + threeX + fourX + fiveX + sixX + sevenX + eightX + nineX + tenX + elevenX 
	+ twelveX + thirteenX + fourteenX + fifteenX + sixteenX + seventeenX + eighteenX + ninteenX + twentyX 
	+ twentyoneX + twentytwoX + twentythreeX + twentyfourX + twentyfiveX)/25)
	
	averageY = ((oneY + twoY + threeY + fourY + fiveY + sixY + sevenY + eightY + nineY + tenY + elevenY 
	+ twelveY + thirteenY + fourteenY + fifteenY + sixteenY + seventeenY + eighteenY + ninteenY + twentyY 
	+ twentyoneY + twentytwoY + twentythreeY + twentyfourY + twentyfiveY)/25)

	
	absPlaySpeed = sqrt((absf(playerSpeedX ** 2) + absf(playerSpeedY ** 2))) 
	# "**" applies an exponent so **2 is to the second power
	playSpeedPercent = (absPlaySpeed/186)*100
	endAngle = lerp(staticAngle, playerAngle, playSpeedPercent/100)

	var shortestAngle = 180-shortest_rotation(endAngle)
	var spriteAngle = rad_to_deg(atan(averageX/averageY))

	print ("short",shortestAngle)
	print ("adjust",adjustedTarget)
	if (averageX >= 0 and averageY >= 0 ):
		adjustedTarget = spriteAngle+270
	if (averageX >= 0 and averageY < 0 ):
		adjustedTarget = spriteAngle+90
	if (averageX < 0 and averageY >= 0 ):
		adjustedTarget = spriteAngle+270
	if (averageX < 0 and averageY < 0 ):
		adjustedTarget = spriteAngle+90

#mostly copied this, not 100% sure if/how it works
func shortest_rotation(ang: float) -> float:
	var new_ang = fmod(ang, 360)
	if abs(new_ang) > 180:
		if new_ang > 0:
			new_ang -= 360
		else:
			new_ang += 360
	return new_ang
