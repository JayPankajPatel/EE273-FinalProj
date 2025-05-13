class c_1437_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1437_6;
    c_1437_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxxz0xx0z1z1zz00xx0xzzzzx011xzxxxzxxzzzzzzxxzxzzxxzzxxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
