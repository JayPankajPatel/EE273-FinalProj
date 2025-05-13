class c_1576_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1576_6;
    c_1576_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxx0x0zxxzx0z11xxz1001z0xx01zxxzxzxzxzxzxxzzxxxzzxxxxzzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
