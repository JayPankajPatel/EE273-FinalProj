class c_1772_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1772_6;
    c_1772_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11xz0101000x1xzx01x1zxx1z11xzzzzzxxxxzxxxzxzxxxzzzzzzxzzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
