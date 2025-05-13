class c_1260_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1260_6;
    c_1260_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0xz0z0xxzzz010011x11x0xzzz00z1xzzzxzxxxzxxzxxzzxzzxxzzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
