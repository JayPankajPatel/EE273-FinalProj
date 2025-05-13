class c_661_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_661_6;
    c_661_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx11zx100xzxzxzxxzz0z011z0000xxxxzzxzxxzxxxxxxxzxxzxxxzzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
