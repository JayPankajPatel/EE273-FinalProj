class c_172_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_172_6;
    c_172_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xz1zz11z1z0zx00zzxz0z100x11z01zxxxxzzxxxxzzzxxzxxzzxxxxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
