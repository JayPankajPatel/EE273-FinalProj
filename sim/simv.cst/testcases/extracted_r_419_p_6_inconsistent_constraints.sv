class c_419_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_419_6;
    c_419_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxx01zx11xx1x100zxzzx1x01z1zx01xzxxxzzzzzzzzxzxzxzxzxxxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
