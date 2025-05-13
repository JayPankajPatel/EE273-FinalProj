class c_1596_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1596_6;
    c_1596_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxzxzx0z1xz0x0z11zx01zxx110zx10zxzzzzzxzxxzxzxzxxxxxzzxxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
