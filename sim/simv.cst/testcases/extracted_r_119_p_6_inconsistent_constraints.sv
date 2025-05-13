class c_119_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_119_6;
    c_119_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz01zxxxzx011z0z1110xxz001x0zx0zzxxzxxzxxzxzxxzzxzxxxxzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
