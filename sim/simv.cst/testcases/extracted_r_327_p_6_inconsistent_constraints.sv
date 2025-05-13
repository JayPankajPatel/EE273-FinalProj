class c_327_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_327_6;
    c_327_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101z111x000x00z1x0x10100z0z11001xzzzzxxxxxxzxzzzxxzxxxzzxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
