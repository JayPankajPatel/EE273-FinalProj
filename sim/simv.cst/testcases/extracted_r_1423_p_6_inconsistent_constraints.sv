class c_1423_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1423_6;
    c_1423_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0100100x0xzz0xz00zz0x0zz1xx0100zzxzzzzzzxxzxzxzzzzzzxxxxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
