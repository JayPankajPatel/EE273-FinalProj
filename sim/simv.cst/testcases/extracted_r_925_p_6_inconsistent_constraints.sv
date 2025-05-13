class c_925_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_925_6;
    c_925_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0001xz11zx01xz1x0xx0z0z010z10xzxxxzxzzxzzxzzxzxxzxxxxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
