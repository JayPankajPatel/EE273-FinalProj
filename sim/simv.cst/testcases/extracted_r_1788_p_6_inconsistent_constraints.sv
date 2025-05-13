class c_1788_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1788_6;
    c_1788_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x10x01x00zxz0zz01xzxx1x11z0z110xzzxxxzzzxxxzzxxzxzxzxzxxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
