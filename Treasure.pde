class Treasure{
	int x = 0;
	int y = 0;
	
	PImage treasureImg;
	Treasure () {
		this.treasureImg = loadImage("img/treasure.png");
		this.randomPosition();
	}

	void randomPosition() {
		this.x = int(random(0, width - this.treasureImg.width));
		this.y = int(random(0, height - this.treasureImg.height));
	}

	void draw() {
		image(this.treasureImg, this.x, this.y);

		if (isHit(this.x, this.y, this.treasureImg.width, this.treasureImg.height, fighter.x, fighter.y, fighter.fighterImg.width, fighter.fighterImg.height)) {
			fighter.hpValueChange(10);
			this.randomPosition();
		}
	}
}
