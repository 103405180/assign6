class Background{
	PImage start1;
	PImage start2;

	PImage bg1;
	PImage bg2;
	
	PImage end1;
	PImage end2;


	int playingBg1x = 0;
	int playingBg2x = -640;

	Background() {
		//since this won't change in the future
		this.bg1 = loadImage("img/bg1.png");
		this.bg2 = loadImage("img/bg2.png");

		this.start1 = loadImage("img/start1.png");
		this.start2 = loadImage("img/start2.png");

		this.end1 = loadImage("img/end1.png");
		this.end2 = loadImage("img/end2.png");
	}

	void draw()
	{
		if (state == GameState.START) {
			if (second() % 2 == 1 ) {
				image(start1, 0, 0);
			}
			else {
				image(start2, 0, 0);
			}
		}
		else if (state == GameState.PLAYING) {
			playingBg1x++;
			playingBg2x++;

			if (playingBg1x == 640) {
				playingBg1x = -640;
			}

			if (playingBg2x == 640) {
				playingBg2x = -640;
			}

			image(bg1, playingBg1x, 0);
			image(bg2, playingBg2x, 0);
		}
		else if (state == GameState.END) {
			if (second() % 2 == 1 ) {
				image(end1, 0, 0);
			}
			else {
				image(end2, 0, 0);
			}
		}
	}

}
