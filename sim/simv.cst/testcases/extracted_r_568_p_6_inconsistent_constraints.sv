class c_568_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_568_6;
    c_568_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1x1x1z1zzzzzxxxz0x0x10xxzzz011xzxzxxxxxxzzxzxxxzzzxxxzzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
