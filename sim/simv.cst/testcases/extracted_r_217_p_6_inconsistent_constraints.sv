class c_217_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_217_6;
    c_217_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z001zz001z000z11x0z11xx011x1xzzzxzzxxxzxxxxxzzxxxzxxxzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
