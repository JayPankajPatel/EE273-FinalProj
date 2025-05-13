class c_769_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_769_6;
    c_769_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz011zx1x1z11zx0zx0zzzz11xz1xz1zzzxxxzzzxxxzxzxzxzzxxzzxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
