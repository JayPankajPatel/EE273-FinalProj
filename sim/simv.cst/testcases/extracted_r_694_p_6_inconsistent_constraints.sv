class c_694_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_694_6;
    c_694_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx101zzxxz100xz0z1z0z00xz00z11x1xzxzxxzxxzxxzzzxzxzzzxxzzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
