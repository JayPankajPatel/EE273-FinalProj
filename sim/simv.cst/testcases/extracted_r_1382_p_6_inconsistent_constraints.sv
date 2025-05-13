class c_1382_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1382_6;
    c_1382_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z1z1z00z1zx1zzzxx0x1xx01zz110xxxxzxxxzzzzxxxxzxxzzzzxzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
