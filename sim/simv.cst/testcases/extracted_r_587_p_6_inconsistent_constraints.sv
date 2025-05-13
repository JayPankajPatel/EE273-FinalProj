class c_587_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_587_6;
    c_587_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z0xz0101101x1x110xxx10x1x11z1xzxxzzzzxzxzxxxxxxxxxxxzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
