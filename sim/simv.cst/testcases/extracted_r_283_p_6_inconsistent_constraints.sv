class c_283_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_283_6;
    c_283_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx000z1zxx00zzxz11z010x0xz001xzxzxzxzzzzxxxzzxzxzxxxzzzxxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
