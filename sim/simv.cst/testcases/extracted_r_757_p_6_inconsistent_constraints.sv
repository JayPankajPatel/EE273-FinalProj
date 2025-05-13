class c_757_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_757_6;
    c_757_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxx001z0zxzxx01xx0xzx01zxz111zxzzxxxzzzxzxzxzzxxxxzxzzxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
