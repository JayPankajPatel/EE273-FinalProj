class c_399_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_399_6;
    c_399_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx00xx101x00zxz110z0xz1z001z00zzzzzzxxzxxzzxzxxxxxzxzzzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
