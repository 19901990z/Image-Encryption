%global image;
%I = image;
global encrypted_image_name;
I = load(encrypted_image_name).E;
subplot (3, 1, 1)
hist(I(:,:,1));
title("Red");
subplot (3, 1, 2)
hist(I(:,:,2));
title("Green");
subplot (3, 1, 3)
hist(I(:,:,3));
title("Blue");


