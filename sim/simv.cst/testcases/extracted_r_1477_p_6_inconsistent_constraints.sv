class c_1477_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1477_6;
    c_1477_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxx1zz001x1z1zxxx00zz0zzx00zx11xzxzzxxzzzzzzzxxxxxzxzzxxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
