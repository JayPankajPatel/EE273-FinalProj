class c_1093_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1093_6;
    c_1093_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx11z0xz1zzx1xx00zzx00x1zz001xxzxzzzzzzxzzxzxxzxxxzxzxxxzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
