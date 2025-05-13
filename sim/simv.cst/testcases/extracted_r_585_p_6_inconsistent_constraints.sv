class c_585_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_585_6;
    c_585_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x00z0zz010x1x10zx111z1x10xz1zzzxzzzzzzxxxzzxzxzzzxxxxxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
