class c_86_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_86_6;
    c_86_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzzx1zzz1z01x0xxx1z01zx11x1xx1zxxzxxzxzzzxzzxxzxxxxzxzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
