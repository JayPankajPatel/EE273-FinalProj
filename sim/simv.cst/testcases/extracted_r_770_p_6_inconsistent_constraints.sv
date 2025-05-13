class c_770_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_770_6;
    c_770_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0010xz010x11xzxzxx0xzxxzzz100110xxxxxxxzzxxxzxzzxzxxzxxxzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
