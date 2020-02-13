package 
{

	import flash.display.*;
	import flash.events.*;


	public class SpriteApp extends MovieClip
	{
		// Array to hold all our boxes
		private var boxList:Array;

		public function SpriteApp()
		{
			// Code to default the swf file to full screen
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.displayState = StageDisplayState.FULL_SCREEN;
			// Initialize array
			boxList = new Array();

			for (var i:int = 0; i < 1500; i++)
			{
				// Create new box, add to screen, and push into array
				var b:Box = new Box(stage.fullScreenWidth,stage.fullScreenHeight);
				addChild(b);
				boxList.push(b);
			}

			addEventListener(Event.ENTER_FRAME, moveBoxes);
		}

		public function moveBoxes(event:Event)
		{
			// Call moveBox() for each box
			for (var i:int = 0; i < 1500; i++)
			{
				boxList[i].moveBox();
			}
		}
	}

}