class c_1813_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1813_6;
    c_1813_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z111x01xxx01011x010xz0xxx10z111zzxzzxzzzzzxxzzzzzxxzxxxxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
