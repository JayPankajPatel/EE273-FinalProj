class c_889_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_889_6;
    c_889_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0x00z001z101z1x1xx0xxxx11x0zxxzzzzzzxzxzzzxxxxzzxzxzzxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
