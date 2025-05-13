class c_1088_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1088_6;
    c_1088_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx11001x11zxxzz1x000xz0zz0z0zx1xzzxzxxxxzxzxzzxzxxzxzzzzxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
