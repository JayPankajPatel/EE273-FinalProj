class c_1230_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1230_6;
    c_1230_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1x0xz1z0x0101110xz1zz00xzx1xzzzxxxzxxzzxxxxzxzxxzzxzzxxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
