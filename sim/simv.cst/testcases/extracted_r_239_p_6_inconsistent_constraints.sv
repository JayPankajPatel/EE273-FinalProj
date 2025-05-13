class c_239_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_239_6;
    c_239_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00000101x1x1xz0z10x010zxxx0xxzxxxxxzxxxxxzzzxxzxxxxxxxxzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
