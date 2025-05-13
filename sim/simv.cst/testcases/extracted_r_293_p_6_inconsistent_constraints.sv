class c_293_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_293_6;
    c_293_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1zxxxzxzz0x0011001z0x1z0z1xx0zxzzxzxzzzxzzzzzxzzzxxxzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
