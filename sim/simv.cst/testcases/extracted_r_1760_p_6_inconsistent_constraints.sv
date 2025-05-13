class c_1760_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1760_6;
    c_1760_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100111x1xxx001xz0zz01zz1zzz0x0z0xxzzxzxxzxxzzzzzzzxzzxzzzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
