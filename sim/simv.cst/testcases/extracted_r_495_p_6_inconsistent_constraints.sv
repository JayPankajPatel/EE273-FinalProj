class c_495_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_495_6;
    c_495_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1zz1xz0zx1xzz0x0xx1x10z0111zzzzxzzxzxzxxzxzxxxxxzzzxxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
