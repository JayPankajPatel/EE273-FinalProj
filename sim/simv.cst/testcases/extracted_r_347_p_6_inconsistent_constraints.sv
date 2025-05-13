class c_347_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_347_6;
    c_347_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzxx0zzzx11z00z1z0xxz01xxz0xz0zzzxxxxzxzxzxxzxzxzzxzzzzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
