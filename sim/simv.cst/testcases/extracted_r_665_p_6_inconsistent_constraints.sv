class c_665_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_665_6;
    c_665_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzxx10z0z01x1z0111zz0xxx1xzx00zxxxzxzzzxxzxzxxzxxzxxxzxzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
