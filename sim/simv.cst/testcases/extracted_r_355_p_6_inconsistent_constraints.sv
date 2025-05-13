class c_355_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_355_6;
    c_355_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z1xzxzx10x00z0x1xz110zz101zxxxxzxzxxzzzxzzzzzxzxzxxzxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
