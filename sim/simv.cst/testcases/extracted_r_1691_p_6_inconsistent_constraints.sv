class c_1691_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1691_6;
    c_1691_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxx00z1xz11zx1zxz01zxz1xz00zz11zxxzxxxzxzxxzxzxxzzxxxzxxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
