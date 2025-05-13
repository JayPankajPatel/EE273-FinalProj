class c_203_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_203_6;
    c_203_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz0z1z0zx0zx1xx100z1z10xx10x10xxzxxxxxxzzxxzzxxxzxzzzzxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
