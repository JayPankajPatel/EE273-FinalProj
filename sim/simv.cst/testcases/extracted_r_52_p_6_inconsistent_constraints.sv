class c_52_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_52_6;
    c_52_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00x0x1x0xz001z0xz1111z1xzzx001xzxzxzzzzxzzxzxxzzxzzzzxzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
