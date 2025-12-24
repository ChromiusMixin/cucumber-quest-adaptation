base_angle += rotspeed;

pos_x[0] = x + distance * cos(base_angle);
pos_y[0] = y + distance * sin(base_angle);

pos_x[1] = x + distance * cos(base_angle + offset1);
pos_y[1] = y + distance * sin(base_angle + offset1);

pos_x[2] = x + distance * cos(base_angle + offset2);
pos_y[2] = y + distance * sin(base_angle + offset2);