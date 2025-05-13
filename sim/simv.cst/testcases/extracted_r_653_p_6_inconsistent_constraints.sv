class c_653_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_653_6;
    c_653_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx1x10x0zx000x01zxx01z01xz0zx1xzzzzxxzzzxzxzzzzzzxzzzzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
