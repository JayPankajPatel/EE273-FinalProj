class c_315_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_315_6;
    c_315_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx1zxx1xx0z001x1xxzzx1z1x000zx1zxxxxzzxxzxzzzxzxxxxxzxxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
