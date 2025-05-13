class c_117_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_117_6;
    c_117_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0100xxxxzxxxz1zxxzx1xz1xxx0z1x0xzzzxxxzzxxxzxzxxxxxxzxzzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
