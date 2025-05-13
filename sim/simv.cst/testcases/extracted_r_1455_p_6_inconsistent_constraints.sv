class c_1455_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1455_6;
    c_1455_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx11xx1xzx1zz1000xz00z1x0xzzz111xzzzxzxxzzxxxzzzxxzzxxzzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
