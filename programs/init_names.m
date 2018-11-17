%function init_names
  %Clear all globals
  clear -global
  global const;
  %Directories
  global path_to_image = "../images/";
  global path_to_key = "../keys/";

  %File Name Declaration
  global curr_key_name = [path_to_key,"29-Oct-2018-17-42-30.key"];
  global static_image_name = [path_to_image,"static.jpg"];
  global image_name = [path_to_image,"463.jpg"];
  global padded_image_name = [path_to_image,"padded.jpg"];
  global permuted_image_name = [path_to_image,"permuted.jpg"];
  global depermuted_image_name = [path_to_image,"depermuted.jpg"];
  global encrypted_image_name = [path_to_image,"encrypted.dat"];
  global decrypted_image_name = [path_to_image,"decrypted.jpg"];
  
  
  
  
  %Load Image
  global image = imread(image_name);
  global const;
  if(exist(padded_image_name,'file')==2)
    global padded_image = imread(padded_image_name);
  endif
  %Block Sizes
  global block_size_x = 32;
  global block_size_y = 32;
  
  global block_num_x block_num_y size_x size_y;
  refresh_image_sizes;
  
  global permuted_mat;
  
  %Random variables
  global N1 N2 W;
  
  %Color for similarity and histogram [1 = red,2 = green, 3 = blue]
  global color = 3;
%endfunction