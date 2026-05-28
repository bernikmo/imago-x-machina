// sketch_01_grid.pde


final int ROWS = 22;
final int COLUMNS = 12;
final float SIZE = 50;

final float MARGIN = 75;


void setup() {
    size(750, 1250);
    background(255);

    rectMode(CENTER);
        
    stroke(0);
    strokeWeight(1);
    noFill();
    
    translate(MARGIN, MARGIN);

    for (int row = 0; row <= ROWS; row++) {
        for (int column = 0; column <= COLUMNS; column++) {
            float centerX = column * SIZE;
            float centerY = row * SIZE;
            rect(centerX, centerY, SIZE, SIZE);
        }
    }
}
