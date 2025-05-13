class c_723_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_723_6;
    c_723_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx011zzzx01xx0xxx11zx10x100xx110xxzxzzzzxzzxzxzxzxzzzxzxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
