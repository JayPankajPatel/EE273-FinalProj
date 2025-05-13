class c_1580_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1580_6;
    c_1580_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1xzz0zx1z100xzx00xz0zz00xz00xxzxxxxxxzzzzzxzxzxxxzxzzxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
