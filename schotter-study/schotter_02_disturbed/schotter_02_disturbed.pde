// schotter_02_disturbed.pde


final int ROWS = 22;
final int COLUMNS = 12;
final float SIZE = 40;

final float MAX_ROT = 0.03;
final float MAX_MOVE_X = 1;
final float MAX_MOVE_Y = 1.5;

final float MARGIN = 100;

final String FILENAME = "output/schotter_02_disturbed.png";


void setup() {
    size(650, 1100);
    background(255);

    rectMode(CENTER);
    stroke(0);
    strokeWeight(1);
    noFill();

    for (int row = 0; row < ROWS; row++) {

        for (int column = 0; column < COLUMNS; column++) {

            // origin
            float originX   = column * SIZE;
            float originY   = row * SIZE;
            float originRot = 0;

            // random disturbance
            float randMoveX = row * random(-MAX_MOVE_X, MAX_MOVE_X);
            float randMoveY = row * random(0, MAX_MOVE_Y);
            float randRot   = row * random(-MAX_ROT, MAX_ROT);

            // disturbed state
            float disturbedX   = originX + randMoveX;
            float disturbedY   = originY + randMoveY;
            float disturbedRot = originRot + randRot;

            // transform and draw
            pushMatrix();

            translate(disturbedX + MARGIN, disturbedY + MARGIN);
            rotate(disturbedRot);

            rect(0, 0, SIZE, SIZE);

            popMatrix();
        }
    }
    
    saveFrame(FILENAME);
}
