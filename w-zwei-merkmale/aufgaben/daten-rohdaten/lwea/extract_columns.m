g = 9.80665;
t = seconds(spider8(:,1));
o = - 1;
B1_x = g * (1000 * spider8(:, 2)  + o*29) / 699;
B1_y = g * (1000 * spider8(:, 3)  + o*24) / 699;
B1_z = g * (1000 * spider8(:, 4)  + o* 1)  / 702;
B2_x = g * (1000 * spider8(:, 5)  + o*32) / 700;
B2_y = g * (1000 * spider8(:, 6)  + o*23) / 701;
B2_z = g * (1000 * spider8(:, 7)  + o*18) / 705;
B3_x = g * (1000 * spider8(:, 8)  + o*18) / 698;
B3_y = g * (1000 * spider8(:, 29) - o* 1) / 698;
B3_z = g * (1000 * spider8(:, 10) - o* 9) / 700;
B4_x = g * (1000 * spider8(:, 11) - o*10) / 699;
B4_y = g * (1000 * spider8(:, 12) + o*12) / 696;
B4_z = g * (1000 * spider8(:, 13) + o*13) / 705;
B5_x = g * (1000 * spider8(:, 11) + o*23) / 705;
B5_y = g * (1000 * spider8(:, 12) + o* 9) / 697;
B5_z = g * (1000 * spider8(:, 13) + o* 3) / 703;
B6_x = g * (1000 * spider8(:, 19) + o*17) / 699;
B6_y = g * (1000 * spider8(:, 19) + o*31) / 694;
B6_z = g * (1000 * spider8(:, 19) + o*29) / 710;
W1 = spider8(:, 20);
W2 = spider8(:, 21);
W3 = spider8(:, 22);
W4 = spider8(:, 23);
W5 = spider8(:, 24);
W6 = spider8(:, 25);
B7 = 1000 / 9780 * spider8(:, 26);
B8 = 1000 / 9800 * spider8(:, 27);
B9 = 1000 / 10310 * spider8(:, 28);
Leistung   =  80 * spider8(:, 9);
Windgeschw =   4 * spider8(:, 30);
Drehzahl   =   6 * spider8(:, 31);
Azimut     = 3.6 * spider8(:, 32);
Pitch      = 15 + 8 * spider8(:, 33);