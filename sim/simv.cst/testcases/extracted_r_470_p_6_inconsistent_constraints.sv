class c_470_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_470_6;
    c_470_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01z1z0x01xx1x0zxx110x111x010z0zxzxxzzxzxxzxxxzxxxzxxzxzxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
