// schotter_03_interactive_01.pde


final int ROWS = 22;
final int COLUMNS = 12;
final float SIZE = 40;

final float MAX_ROT = 0.03;
final float MAX_MOVE_X = 1;
final float MAX_MOVE_Y = 1.5;

final float MARGIN = 100;

final String FILENAME = "output/schotter_03_interactive_01.png";

Pose[] origins      = new Pose[ROWS * COLUMNS];
Pose[] disturbances = new Pose[ROWS * COLUMNS];
Pose[] disturbed    = new Pose[ROWS * COLUMNS];



void setup() {
    size(650, 1100);

    rectMode(CENTER);
    stroke(0);
    strokeWeight(1);
    noFill();    

    // create origin, disturbance, and disturbed states
    int i = 0;
    for (int row = 0; row < ROWS; row++) {
        for (int column = 0; column < COLUMNS; column++) {

            // origin
            float originX   = column * SIZE;
            float originY   = row * SIZE;
            float originAngle = 0;

            // random disturbance
            float randDisturbanceX     = row * random(-MAX_MOVE_X, MAX_MOVE_X);
            float randDisturbanceY     = row * random(0, MAX_MOVE_Y);
            float randDisturbanceAngle = row * random(-MAX_ROT, MAX_ROT);

            // disturbed state
            float disturbedX   = originX + randDisturbanceX;
            float disturbedY   = originY + randDisturbanceY;
            float disturbedRot = originAngle + randDisturbanceAngle;

            origins[i]      = new Pose(originX, originY, originAngle);
            disturbances[i] = new Pose(randDisturbanceX, randDisturbanceY, randDisturbanceAngle);
            disturbed[i]    = new Pose(disturbedX, disturbedY, disturbedRot);

            i++;
        }
    }
}



void draw() {
    background(255);

    for (Pose disturbedPose : disturbed) {
        pushMatrix();

        translate(disturbedPose.x + MARGIN, disturbedPose.y + MARGIN);
        rotate(disturbedPose.angle);
        rect(0, 0, SIZE, SIZE);

        popMatrix();
    }
}



void mouseClicked() {

    // update random and disturbed states
    int i = 0;
    for (int row = 0; row < ROWS; row++) {
        for (int column = 0; column < COLUMNS; column++) {

            // random disturbance
            float randDisturbanceX     = row * random(-MAX_MOVE_X, MAX_MOVE_X);
            float randDisturbanceY     = row * random(0, MAX_MOVE_Y);
            float randDisturbanceAngle = row * random(-MAX_ROT, MAX_ROT);

            // disturbed state
            float disturbedX   = origins[i].x + randDisturbanceX;
            float disturbedY   = origins[i].y + randDisturbanceY;
            float disturbedAngle = origins[i].angle + randDisturbanceAngle;

            disturbances[i] = new Pose(randDisturbanceX, randDisturbanceY, randDisturbanceAngle);
            disturbed[i]    = new Pose(disturbedX, disturbedY, disturbedAngle);

            i++;
        }
    }
}



void keyPressed() {
    if (key == 's') {
        saveFrame(FILENAME);
        println("Image saved");
    }
}



class Pose {
    float x;
    float y;
    float angle;

    Pose(float x, float y, float angle) {
        this.x = x;
        this.y = y;
        this.angle = angle;
    }
}
