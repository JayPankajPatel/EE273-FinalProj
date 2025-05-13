class c_1265_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1265_6;
    c_1265_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0z1001z0zxzz0xz000x000zxxxx11zzzzxzxxzzzxzzzzxzxxxxzxzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
