class c_1860_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1860_6;
    c_1860_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zx00z00xxxz1x0zzxx1x11x0x1x0xzxxxxxxxxxxxzzxxzzxzzzzzxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
