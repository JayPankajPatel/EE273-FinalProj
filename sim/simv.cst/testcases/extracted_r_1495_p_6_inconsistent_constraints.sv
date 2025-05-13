class c_1495_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1495_6;
    c_1495_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zzx00zz1x1x1111x1zzz0xz001z0xzxxxxxxxxzxzxzxxzzzzzzxxxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
