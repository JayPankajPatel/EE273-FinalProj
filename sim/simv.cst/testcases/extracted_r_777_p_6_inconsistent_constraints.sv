class c_777_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_777_6;
    c_777_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z0xz01z1z11001x001z1z110z0x1zxzxzzxxzxzzxzxzxxxzxxxxxzzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
