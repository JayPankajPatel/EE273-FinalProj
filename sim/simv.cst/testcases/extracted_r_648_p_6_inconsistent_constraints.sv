class c_648_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_648_6;
    c_648_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0110x1101x0zzxxxz0zz10x0x010z0xxxzxxzxzxzxzzxzxxxzxzzxxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
