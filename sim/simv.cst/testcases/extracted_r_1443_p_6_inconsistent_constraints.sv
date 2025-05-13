class c_1443_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1443_6;
    c_1443_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z00xz1xx011z101x0xz01xzx0z010z1xxzxxzxxxzzzxxzzxxzzxzxzzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
