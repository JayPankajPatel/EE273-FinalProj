class c_87_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_87_6;
    c_87_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1xx00x0xz1101z001xx1x0001z10xzxxxxzzxzzzzzzxzzzxxzzxzxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
