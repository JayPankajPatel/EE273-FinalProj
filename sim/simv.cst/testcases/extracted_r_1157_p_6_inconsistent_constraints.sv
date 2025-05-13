class c_1157_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1157_6;
    c_1157_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01zxzz0x1zz11z0z110z1z0z10xx0zzzzxxxzxzzzxxxzzxxzxxxxxxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
