class c_883_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_883_6;
    c_883_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxxxx11xzxz1z0011xx1xxzzz0xz10zzzzzzxxzzxzzzzzzxzzxxxxzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
