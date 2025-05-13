class c_1436_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1436_6;
    c_1436_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01xzzz100z001zx11z1zz0x1xx01x1zxxxxzzzzxxxxxzxxxzzzxzzxzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
