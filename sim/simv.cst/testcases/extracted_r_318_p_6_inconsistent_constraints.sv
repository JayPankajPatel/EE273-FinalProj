class c_318_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_318_6;
    c_318_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1zx0zzxxz10zxxxx1zzz01101z1xxzxzzzzzxzxzzxxxzxxzxzzzzxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
