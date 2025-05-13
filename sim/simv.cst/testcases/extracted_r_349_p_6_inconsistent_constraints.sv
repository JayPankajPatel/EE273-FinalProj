class c_349_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_349_6;
    c_349_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xx11z0x0xz01zz1x0zxx10z0101z10zzzzzzzxxzzxxzzzxxxxxxzzxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
