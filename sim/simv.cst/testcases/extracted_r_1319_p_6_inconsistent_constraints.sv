class c_1319_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1319_6;
    c_1319_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0xzzx1xzzxxzzx0xz1z010xz01xx1zzzzxxzxxzxxxzxxzxzzzzzzxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
