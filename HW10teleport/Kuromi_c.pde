class TeleportKuromi extends Kuromi {
  TeleportKuromi(int i) {
    super(i);
  }

  TeleportKuromi() {
    super();
  }
  
  
  
  void teleport() {
    int teleportCount = 0;
    while (teleportCount < 5) {
      float a = random(0, 100);
      if (a % 15 == 0) {
        x = random(100, width-100);
        y = random(100, height-200);
        teleportCount++;
      }
    }
  }
}
