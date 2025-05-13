class c_163_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_163_6;
    c_163_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011z1x11x001x1z1xxx01xzzx0z0z1xxxzzzxxzxzxxzxzzxxxzxzxxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
