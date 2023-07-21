//симуляция снега
PImage img;

Agent[] agents = new Agent[300];

void setup() {
  size(600, 600);
  img = loadImage("image.jpg");
  frameRate(144);

  for (int i=0; i<agents.length; ++i) {
    agents[i] = new Agent();
  }
}

void draw() {
  surface.setSize(img.width, img.height);

  background(0);
  image(img, 0, 0);
  for (Agent agent : agents) {
    agent.display();
    agent.step();
  }
}
