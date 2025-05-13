class c_1452_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1452_6;
    c_1452_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz100zx10z0z11z1xz1000zz10xzz11zzxzzzxxxzxxzxzzzzzzxxzxzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
