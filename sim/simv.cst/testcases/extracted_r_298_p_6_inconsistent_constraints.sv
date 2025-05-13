class c_298_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_298_6;
    c_298_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz010111010011x110001101zxzxx0zzxzzzxzzzxxxzxzzxzxxzzxzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
