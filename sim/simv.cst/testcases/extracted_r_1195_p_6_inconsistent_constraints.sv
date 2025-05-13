class c_1195_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1195_6;
    c_1195_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx0001xzxz1zx01xz00xzx110xz1zx1zzzxzxxzzzxxzxxzxxxzzzzxxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
