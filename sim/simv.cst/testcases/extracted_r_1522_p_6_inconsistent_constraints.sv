class c_1522_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1522_6;
    c_1522_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx10zz01x1000zx1zx11xx101z01xx0xzxzzxxxxzxzzzxxxxzzxxzzxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
