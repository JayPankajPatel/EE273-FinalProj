class c_1635_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1635_6;
    c_1635_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1x1001xxz00xx1x1zx0z11100zzx1xzxzzzxxxxzzzzxxxxxxzzxzzzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
