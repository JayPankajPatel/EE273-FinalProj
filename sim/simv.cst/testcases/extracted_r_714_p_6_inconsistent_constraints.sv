class c_714_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_714_6;
    c_714_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11zxzx11zz100z11zz1x11x1xzxz1z0zzzzxzxzxzxxzxzzzxxzxzxzzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
