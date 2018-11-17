%z = imread(image_name);
z = load(encrypted_image_name).E;
subplot (3, 1, 1)
hist(z(:,:,1));
subplot (3, 1, 2)
hist(z(:,:,2));
subplot (3, 1, 3)
hist(z(:,:,3));
