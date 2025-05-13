class c_1787_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1787_6;
    c_1787_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111xxxz010z1111000xxx00zx0x0x0x0zzzzxxxzzzxzxzxzxxxzzzzxxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
