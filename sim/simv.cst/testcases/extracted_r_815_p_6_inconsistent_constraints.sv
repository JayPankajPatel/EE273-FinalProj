class c_815_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_815_6;
    c_815_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0xz1x0z01101xx1x1x1x01xxzxx010xzxzxxzxxxxxxzxzzzzzxzxxxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
