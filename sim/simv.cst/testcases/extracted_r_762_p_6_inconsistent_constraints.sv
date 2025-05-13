class c_762_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_762_6;
    c_762_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x0zz111zx1z0zx11z1zx1x011z0z10xxxzxxxzzxzxxzxxxzzxzxzxzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
