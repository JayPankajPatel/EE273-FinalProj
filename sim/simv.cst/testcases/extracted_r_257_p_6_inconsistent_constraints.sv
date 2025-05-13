class c_257_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_257_6;
    c_257_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z110x1z110xx0zxx0xz10x0z1x0z111xzzzzxzzzzxxxzzxzxxxxxxzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
