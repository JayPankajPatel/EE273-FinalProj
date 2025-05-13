class c_965_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_965_6;
    c_965_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110x001zzxxxz10xxx11xz101z1xxzxzxzzxzzxzzzxzxxzxxzzxxzxzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
