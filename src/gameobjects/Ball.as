package gameobjects
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Rob Verhoef & Daan Ruiter
	 */
	public class Ball extends GameObject
	{
		
		public function Ball(_sprite:MovieClip = null, _startVelocity:Vector2D = null):void
		{
			super(_sprite, _startVelocity);
			this.velocity.x = 5;
			this.velocity.y = 5;
		}
		
		public override function update():void
		{
			this.x += velocity.x;
			this.y += velocity.y;
			if (this.x >= 700)
			{
				hitBat();
			}
			if (this.y >= 600)
			{
				hitBound();
			}
		}
		
		public function hitBat():void
		{
			this.velocity.x *= -1;
		}
		
		public function hitBound():void
		{
			this.velocity.y *= -1;
		}
		
	}

}