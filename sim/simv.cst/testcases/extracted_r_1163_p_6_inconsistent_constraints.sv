class c_1163_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1163_6;
    c_1163_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z011xx1001zzz000110xz0xzxx001z1zxxxxzxzzxxzxxxzzzxzxzzxzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
