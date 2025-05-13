class c_1739_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1739_6;
    c_1739_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1101z011z1xzx10011xx0zxzxx01z1x1xxzzxzxzxzzxzxxxxxxxxxzzzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
