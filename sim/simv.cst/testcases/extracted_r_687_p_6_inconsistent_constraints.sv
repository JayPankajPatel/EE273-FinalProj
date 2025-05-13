class c_687_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_687_6;
    c_687_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z0zz10z011111x01x0101z01z1x1xxzzxxxxxzzzxzzzxxxzzxxxzzzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
