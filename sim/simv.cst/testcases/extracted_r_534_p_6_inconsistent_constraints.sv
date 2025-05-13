class c_534_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_534_6;
    c_534_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1zz001z1x0x1zzx00xxxx1x01xx001zzzxzxzzxxzxzxzxzzxxxzxzxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
