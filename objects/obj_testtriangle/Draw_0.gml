// Set draw properties
draw_set_color(#26A7FF);
draw_set_alpha(0.75);

// Draw triangle
draw_triangle(pos_x[0], pos_y[0], pos_x[1], pos_y[1], pos_x[2], pos_y[2], false);

// Reset draw properties
draw_set_color(c_white);
draw_set_alpha(1);