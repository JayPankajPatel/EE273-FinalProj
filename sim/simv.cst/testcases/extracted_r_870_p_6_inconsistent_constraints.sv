class c_870_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_870_6;
    c_870_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011x0z1xzz11z0zz0x00xx0010x00011zzxxzzzzzxxxxxzzzxxzxxzzzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
