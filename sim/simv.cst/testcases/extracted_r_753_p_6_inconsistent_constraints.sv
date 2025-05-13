class c_753_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_753_6;
    c_753_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z01zz0z1x00z011z0zxx0xz1xz0z0xzxzxxxxxxxxxxxzxxxzzzzzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
