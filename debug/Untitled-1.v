            //我不知道weight和ifmap的对应是怎样的。这是一个顺序对逆序，我感觉不对
            //在程序中我改掉了，这里备份。
            weightA11 <= dout_weight_2[`ByteThr];
            weightA12 <= dout_weight_2[`ByteTwo];
            weightA13 <= dout_weight_2[`ByteOne];
            weightA14 <= dout_weight_2[`ByteThr];
            weightA15 <= dout_weight_2[`ByteTwo];
            weightA16 <= dout_weight_2[`ByteOne];
            weightA21 <= dout_weight_2[`ByteSix];
            weightA22 <= dout_weight_2[`ByteFiv];
            weightA23 <= dout_weight_2[`ByteFor];
            weightA24 <= dout_weight_2[`ByteSix];
            weightA25 <= dout_weight_2[`ByteFiv];
            weightA26 <= dout_weight_2[`ByteFor];
            weightA31 <= dout_weight_2[`ByteNin];
            weightA32 <= dout_weight_2[`ByteEig];
            weightA33 <= dout_weight_2[`ByteSev];
            weightA34 <= dout_weight_2[`ByteNin];
            weightA35 <= dout_weight_2[`ByteEig];
            weightA36 <= dout_weight_2[`ByteSev];
            weightA41 <= dout_weight_2[`ByteThr];
            weightA42 <= dout_weight_2[`ByteTwo];
            weightA43 <= dout_weight_2[`ByteOne];
            weightA44 <= dout_weight_2[`ByteThr];
            weightA45 <= dout_weight_2[`ByteTwo];
            weightA46 <= dout_weight_2[`ByteOne];
            weightA51 <= dout_weight_2[`ByteSix];
            weightA52 <= dout_weight_2[`ByteFiv];
            weightA53 <= dout_weight_2[`ByteFor];
            weightA54 <= dout_weight_2[`ByteSix];
            weightA55 <= dout_weight_2[`ByteFiv];
            weightA56 <= dout_weight_2[`ByteFor];
            weightA61 <= dout_weight_2[`ByteNin];
            weightA62 <= dout_weight_2[`ByteEig];
            weightA63 <= dout_weight_2[`ByteSev];
            weightA64 <= dout_weight_2[`ByteNin];
            weightA65 <= dout_weight_2[`ByteEig];
            weightA66 <= dout_weight_2[`ByteSev];

            weightB11 <= dout_weight_2[`ByteThr];
            weightB12 <= dout_weight_2[`ByteTwo];
            weightB13 <= dout_weight_2[`ByteOne];
            weightB14 <= dout_weight_2[`ByteThr];
            weightB15 <= dout_weight_2[`ByteTwo];
            weightB16 <= dout_weight_2[`ByteOne];
            weightB21 <= dout_weight_2[`ByteSix];
            weightB22 <= dout_weight_2[`ByteFiv];
            weightB23 <= dout_weight_2[`ByteFor];
            weightB24 <= dout_weight_2[`ByteSix];
            weightB25 <= dout_weight_2[`ByteFiv];
            weightB26 <= dout_weight_2[`ByteFor];
            weightB31 <= dout_weight_2[`ByteNin];
            weightB32 <= dout_weight_2[`ByteEig];
            weightB33 <= dout_weight_2[`ByteSev];
            weightB34 <= dout_weight_2[`ByteNin];
            weightB35 <= dout_weight_2[`ByteEig];
            weightB36 <= dout_weight_2[`ByteSev];
            weightB41 <= dout_weight_2[`ByteThr];
            weightB42 <= dout_weight_2[`ByteTwo];
            weightB43 <= dout_weight_2[`ByteOne];
            weightB44 <= dout_weight_2[`ByteThr];
            weightB45 <= dout_weight_2[`ByteTwo];
            weightB46 <= dout_weight_2[`ByteOne];
            weightB51 <= dout_weight_2[`ByteSix];
            weightB52 <= dout_weight_2[`ByteFiv];
            weightB53 <= dout_weight_2[`ByteFor];
            weightB54 <= dout_weight_2[`ByteSix];
            weightB55 <= dout_weight_2[`ByteFiv];
            weightB56 <= dout_weight_2[`ByteFor];
            weightB61 <= dout_weight_2[`ByteNin];
            weightB62 <= dout_weight_2[`ByteEig];
            weightB63 <= dout_weight_2[`ByteSev];
            weightB64 <= dout_weight_2[`ByteNin];
            weightB65 <= dout_weight_2[`ByteEig];
            weightB66 <= dout_weight_2[`ByteSev];



            ///第二版


            weightA11 <= dout_weight_1[`ByteOne];
            weightA12 <= dout_weight_1[`ByteTwo];
            weightA13 <= dout_weight_1[`ByteThr];
            weightA14 <= dout_weight_1[`ByteOne];
            weightA15 <= dout_weight_1[`ByteTwo];
            weightA16 <= dout_weight_1[`ByteThr];
            weightA21 <= dout_weight_1[`ByteFor];
            weightA22 <= dout_weight_1[`ByteFiv];
            weightA23 <= dout_weight_1[`ByteSix];
            weightA24 <= dout_weight_1[`ByteFor];
            weightA25 <= dout_weight_1[`ByteFiv];
            weightA26 <= dout_weight_1[`ByteSix];
            weightA31 <= dout_weight_1[`ByteSev];
            weightA32 <= dout_weight_1[`ByteEig];
            weightA33 <= dout_weight_1[`ByteNin];
            weightA34 <= dout_weight_1[`ByteSev];
            weightA35 <= dout_weight_1[`ByteEig];
            weightA36 <= dout_weight_1[`ByteNin];
            weightA41 <= dout_weight_1[`ByteOne];
            weightA42 <= dout_weight_1[`ByteTwo];
            weightA43 <= dout_weight_1[`ByteThr];
            weightA44 <= dout_weight_1[`ByteOne];
            weightA45 <= dout_weight_1[`ByteTwo];
            weightA46 <= dout_weight_1[`ByteThr];
            weightA51 <= dout_weight_1[`ByteFor];
            weightA52 <= dout_weight_1[`ByteFiv];
            weightA53 <= dout_weight_1[`ByteSix];
            weightA54 <= dout_weight_1[`ByteFor];
            weightA55 <= dout_weight_1[`ByteFiv];
            weightA56 <= dout_weight_1[`ByteSix];
            weightA61 <= dout_weight_1[`ByteSev];
            weightA62 <= dout_weight_1[`ByteEig];
            weightA63 <= dout_weight_1[`ByteNin];
            weightA64 <= dout_weight_1[`ByteSev];
            weightA65 <= dout_weight_1[`ByteEig];
            weightA66 <= dout_weight_1[`ByteNin];

            weightB11 <= dout_weight_1[`ByteOne];
            weightB12 <= dout_weight_1[`ByteTwo];
            weightB13 <= dout_weight_1[`ByteThr];
            weightB14 <= dout_weight_1[`ByteOne];
            weightB15 <= dout_weight_1[`ByteTwo];
            weightB16 <= dout_weight_1[`ByteThr];
            weightB21 <= dout_weight_1[`ByteFor];
            weightB22 <= dout_weight_1[`ByteFiv];
            weightB23 <= dout_weight_1[`ByteSix];
            weightB24 <= dout_weight_1[`ByteFor];
            weightB25 <= dout_weight_1[`ByteFiv];
            weightB26 <= dout_weight_1[`ByteSix];
            weightB31 <= dout_weight_1[`ByteSev];
            weightB32 <= dout_weight_1[`ByteEig];
            weightB33 <= dout_weight_1[`ByteNin];
            weightB34 <= dout_weight_1[`ByteSev];
            weightB35 <= dout_weight_1[`ByteEig];
            weightB36 <= dout_weight_1[`ByteNin];
            weightB41 <= dout_weight_1[`ByteOne];
            weightB42 <= dout_weight_1[`ByteTwo];
            weightB43 <= dout_weight_1[`ByteThr];
            weightB44 <= dout_weight_1[`ByteOne];
            weightB45 <= dout_weight_1[`ByteTwo];
            weightB46 <= dout_weight_1[`ByteThr];
            weightB51 <= dout_weight_1[`ByteFor];
            weightB52 <= dout_weight_1[`ByteFiv];
            weightB53 <= dout_weight_1[`ByteSix];
            weightB54 <= dout_weight_1[`ByteFor];
            weightB55 <= dout_weight_1[`ByteFiv];
            weightB56 <= dout_weight_1[`ByteSix];
            weightB61 <= dout_weight_1[`ByteSev];
            weightB62 <= dout_weight_1[`ByteEig];
            weightB63 <= dout_weight_1[`ByteNin];
            weightB64 <= dout_weight_1[`ByteSev];
            weightB65 <= dout_weight_1[`ByteEig];
            weightB66 <= dout_weight_1[`ByteNin];


            //第三版

            weightA11 <= dout_weight_1[`ByteSev];
            weightA12 <= dout_weight_1[`ByteEig];
            weightA13 <= dout_weight_1[`ByteNin];
            weightA14 <= dout_weight_1[`ByteSev];
            weightA15 <= dout_weight_1[`ByteEig];
            weightA16 <= dout_weight_1[`ByteNin];
            weightA21 <= dout_weight_1[`ByteFor];
            weightA22 <= dout_weight_1[`ByteFiv];
            weightA23 <= dout_weight_1[`ByteSix];
            weightA24 <= dout_weight_1[`ByteFor];
            weightA25 <= dout_weight_1[`ByteFiv];
            weightA26 <= dout_weight_1[`ByteSix];
            weightA31 <= dout_weight_1[`ByteOne];
            weightA32 <= dout_weight_1[`ByteTwo];
            weightA33 <= dout_weight_1[`ByteThr];
            weightA34 <= dout_weight_1[`ByteOne];
            weightA35 <= dout_weight_1[`ByteTwo];
            weightA36 <= dout_weight_1[`ByteThr];
            weightA41 <= dout_weight_1[`ByteSev];
            weightA42 <= dout_weight_1[`ByteEig];
            weightA43 <= dout_weight_1[`ByteNin];
            weightA44 <= dout_weight_1[`ByteSev];
            weightA45 <= dout_weight_1[`ByteEig];
            weightA46 <= dout_weight_1[`ByteNin];
            weightA51 <= dout_weight_1[`ByteFor];
            weightA52 <= dout_weight_1[`ByteFiv];
            weightA53 <= dout_weight_1[`ByteSix];
            weightA54 <= dout_weight_1[`ByteFor];
            weightA55 <= dout_weight_1[`ByteFiv];
            weightA56 <= dout_weight_1[`ByteSix];
            weightA61 <= dout_weight_1[`ByteOne];
            weightA62 <= dout_weight_1[`ByteTwo];
            weightA63 <= dout_weight_1[`ByteThr];
            weightA64 <= dout_weight_1[`ByteOne];
            weightA65 <= dout_weight_1[`ByteTwo];
            weightA66 <= dout_weight_1[`ByteThr];

            weightB11 <= dout_weight_1[`ByteSev];
            weightB12 <= dout_weight_1[`ByteEig];
            weightB13 <= dout_weight_1[`ByteNin];
            weightB14 <= dout_weight_1[`ByteSev];
            weightB15 <= dout_weight_1[`ByteEig];
            weightB16 <= dout_weight_1[`ByteNin];
            weightB21 <= dout_weight_1[`ByteFor];
            weightB22 <= dout_weight_1[`ByteFiv];
            weightB23 <= dout_weight_1[`ByteSix];
            weightB24 <= dout_weight_1[`ByteFor];
            weightB25 <= dout_weight_1[`ByteFiv];
            weightB26 <= dout_weight_1[`ByteSix];
            weightB31 <= dout_weight_1[`ByteOne];
            weightB32 <= dout_weight_1[`ByteTwo];
            weightB33 <= dout_weight_1[`ByteThr];
            weightB34 <= dout_weight_1[`ByteOne];
            weightB35 <= dout_weight_1[`ByteTwo];
            weightB36 <= dout_weight_1[`ByteThr];
            weightB41 <= dout_weight_1[`ByteSev];
            weightB42 <= dout_weight_1[`ByteEig];
            weightB43 <= dout_weight_1[`ByteNin];
            weightB44 <= dout_weight_1[`ByteSev];
            weightB45 <= dout_weight_1[`ByteEig];
            weightB46 <= dout_weight_1[`ByteNin];
            weightB51 <= dout_weight_1[`ByteFor];
            weightB52 <= dout_weight_1[`ByteFiv];
            weightB53 <= dout_weight_1[`ByteSix];
            weightB54 <= dout_weight_1[`ByteFor];
            weightB55 <= dout_weight_1[`ByteFiv];
            weightB56 <= dout_weight_1[`ByteSix];
            weightB61 <= dout_weight_1[`ByteOne];
            weightB62 <= dout_weight_1[`ByteTwo];
            weightB63 <= dout_weight_1[`ByteThr];
            weightB64 <= dout_weight_1[`ByteOne];
            weightB65 <= dout_weight_1[`ByteTwo];
            weightB66 <= dout_weight_1[`ByteThr];
