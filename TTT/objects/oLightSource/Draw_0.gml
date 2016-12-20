
//In shader code, the vertex position appears to be in camera space. So it only has
//to happen once per light, rather than once per object, we'll fix this by
//calculating the light's position in camera space.

//Note - for the moment, I'm not going to handle rotating views, but
//adding that later shouldn't be super challenging.

//The first part of that takes the current view's extremes.
leftExtreme = view_xview[view_current];
upperExtreme = view_yview[view_current];
rightExtreme = leftExtreme + view_wview[view_current];
lowerExtreme = upperExtreme + view_hview[view_current];

cameraSpacePosX = x - leftExtreme;
cameraSpacePosY = (y - lowerExtreme) * -1;

cameraSpacePosX /= view_wview[view_current];
cameraSpacePosY /= view_hview[view_current];

cameraSpacePosX = cameraSpacePosX * 2.0 - 1.0;
cameraSpacePosY = cameraSpacePosY * 2.0 - 1.0;