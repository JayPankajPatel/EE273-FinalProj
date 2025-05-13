class c_1392_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1392_6;
    c_1392_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zz00z110z010110xxx11z11z0x0x1zxzxzzzxxxxzxzzxxxxxzzxxzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
