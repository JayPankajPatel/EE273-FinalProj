class c_595_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_595_6;
    c_595_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1xz01xx1xxzx11xx0001z0z1z1xz0zzzzxxxxzzzxxzxzxxxxxzzxzxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
