class c_392_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_392_6;
    c_392_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x110xzxx0x01z0x1xzzxxzxx10101xxzzxzzxzxzxzzzzxxzzxzxzxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
