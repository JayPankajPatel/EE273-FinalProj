class c_1711_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1711_6;
    c_1711_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxxzx11z1110xz1zzxxxz0z0zzx0xz1xzxzxzxzzxzzxxxzxzzxzzzxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
