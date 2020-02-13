package  {
	import flash.display.Sprite;
	import flash.geom.ColorTransform;
	
	public class Box extends Sprite{
		// These are squares  so size = width and height
		public var size:Number;
		// Velocity in the x and y directions
		public var vx:Number;
		public var vy:Number;
		// Bottom and right borders
		// Top and left are 0
		public var extremeX:Number;
		public var extremeY:Number; 
		
		// Constructor takes in stage width and height to determine the boundaries of the square
		public function Box(wide, high) {
			// Set to random size and color
			this.size = Math.random()*40 + 10;
			var randomColor = Math.random() * 0xFFFFFF;
			
			// Make a square using the size and color we determined
			graphics.beginFill(randomColor, .55);
			graphics.drawRect(0, 0, size, size);
			graphics.endFill();
			// Start position set to top left corner of stage
			this.x = 0;
			this.y = 0;
			/*
			Velocity set to integer values from 2-6
			These being discrete values is what give this the fun behavior
			The small starting velocity results in some initial choppiness, but this resolves itself nicely
			*/
			vx = Math.floor(Math.random() * 4 + 2);
			vy = Math.floor(Math.random() * 4 + 2);
			// Set Bottom and right boundaries with respect to the top left corner of the square
			extremeX = wide -this.size;
			extremeY = high - this.size;
		}
		
		public function moveBox(){
			// Move square by velocity and account for collisions with the boundaries
			// On collision set the square directly against the boundary and flip the corresponding velocity (make it bounce)
			if((this.x + vx) > extremeX){
				this.x = extremeX;
				vx *= -1;
			}
			else if ((this.x + vx) < 0){
				this.x = 0;
				vx *= -1;
			}
			else{
				this.x += vx;
			}
			if ((this.y + vy) < 0){
				this.y = 0;
				vy *= -1;
			}
			else if ((this.y + vy) > extremeY){
				this.y = extremeY;
				vy *= -1;
			}
			else {
				this.y += vy;
			}
		}

	}
	
}
