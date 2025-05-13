class c_195_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_195_6;
    c_195_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1xx1z1z0xzzzzxx01x1x0z101x1zzxzxzzzxxzxxzzzxzxzxzzxzxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
