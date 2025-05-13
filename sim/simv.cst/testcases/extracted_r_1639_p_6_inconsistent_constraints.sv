class c_1639_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1639_6;
    c_1639_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01xx10z01z1z1xx1xz0zz011zxxx1z0xxxzxzzzzxzxxzzxxzzzxzxxxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
