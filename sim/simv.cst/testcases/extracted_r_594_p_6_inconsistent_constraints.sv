class c_594_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_594_6;
    c_594_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x11zzxxx00zx0z1x00xx10zzxzzxx1zxxxzzxzzzzzzxzxzzxxzxzzxzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
