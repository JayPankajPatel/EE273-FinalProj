class c_1253_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1253_6;
    c_1253_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zz01xz0xx0x1xz0xxx0z1zxz0z100xxzzzxzzxxzxxzzzzzzxxxxxxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
