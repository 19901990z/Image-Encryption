global encrypted_image_name
encrypted_image = load(encrypted_image_name).E;
[orig_x,orig_y,orig_z] = size(encrypted_image);
[orig_x,orig_y,orig_z]
encrypted_image = reshape(encrypted_image,1,orig_x*orig_y*orig_z);
size(encrypted_image)

MIN = min(encrypted_image)
MAX = max(encrypted_image)
encrypted_image_norm = encrypted_image.-MIN;
encrypted_image_norm = encrypted_image_norm./(MAX-MIN);
encrypted_image_norm = reshape(encrypted_image_norm,orig_x,orig_y,orig_z);
size(encrypted_image_norm)
imwrite(encrypted_image_norm,"enc.jpg");

I = encrypted_image_norm;
subplot (3, 1, 1)
hist(I(:,:,1));
title("Red");
subplot (3, 1, 2)
hist(I(:,:,2));
title("Green");
subplot (3, 1, 3)
hist(I(:,:,3));
title("Blue");




%NOT WORKING