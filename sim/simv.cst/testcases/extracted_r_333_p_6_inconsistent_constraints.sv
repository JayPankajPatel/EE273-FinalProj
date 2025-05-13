class c_333_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_333_6;
    c_333_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1xzxxx1x11z1z001xz000z01z110z0zxzxzzxzzxxxzzzzxzxxzxxxxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
