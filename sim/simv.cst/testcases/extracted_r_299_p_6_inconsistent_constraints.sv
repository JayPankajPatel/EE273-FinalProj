class c_299_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_299_6;
    c_299_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx01x10x00zzx1zz0x0z110z00xx10xzzxzxxzzzxzxzxzxzzzzxxzxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
