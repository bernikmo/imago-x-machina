// sketch_02_scatter.pde


final int ROWS = 22;
final int COLUMNS = 12;
final float SIZE = 40;

final float MAXROT = 0.03;
final float MAX_SHIFT_X = 1;
final float MAX_SHIFT_Y = 1.5;

final float MARGIN = 100;

final String FILENAME = "output/02_scatter.png";


void setup() {
    size(650, 1100);
    background(255);

    rectMode(CENTER);

    stroke(0);
    strokeWeight(1);
    noFill();

    for (int row = 0; row < ROWS; row++) {

        for (int column = 0; column < COLUMNS; column++) {

            // random shift depends on current row
            float randShiftX = row * random(-MAX_SHIFT_X, MAX_SHIFT_X);
            float randShiftY = row * random(0, MAX_SHIFT_Y);

            // parameters for the transformation
            float rotation = row * random(-MAXROT, MAXROT);
            float shiftX = column * SIZE + MARGIN + randShiftX;
            float shiftY = row * SIZE + MARGIN + randShiftY;

            // transform and draw
            pushMatrix();

            translate(shiftX, shiftY);
            rotate(rotation);

            rect(0, 0, SIZE, SIZE);

            popMatrix();
        }
    }
    saveFrame(FILENAME);
}
