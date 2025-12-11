timer += 1;
image_index = (timer / 60) * 4;

if (timer >= 60)
{
    image_index = 3;
    image_alpha -= 0.05;
}

if (timer >= 80)
    instance_destroy();
