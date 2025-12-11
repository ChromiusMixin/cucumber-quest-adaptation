buffer -= 1;

if (buffer < 0)
{
    if (mouthmove == 1 && mouthtimer == 0)
    {
        mouthtimer = 1;
        face_index = 1;
    }
}

if (mouthtimer > 0)
    mouthtimer += rate;

if (mouthtimer >= 1 && mouthtimer <= 10)
    face_index = 1;
else
    face_index = 0;

if (mouthtimer >= 18)
{
    mouthtimer = 0;
    mouthmove = 0;
}
