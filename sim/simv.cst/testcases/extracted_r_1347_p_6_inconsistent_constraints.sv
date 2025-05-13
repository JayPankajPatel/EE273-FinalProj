class c_1347_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1347_6;
    c_1347_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x10xx10011x0z01z000x0xx0101x101xzxzxxxzzxxxzxzzxxzxzxzzxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
