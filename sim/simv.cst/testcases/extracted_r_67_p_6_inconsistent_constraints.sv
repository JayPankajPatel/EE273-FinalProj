class c_67_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_67_6;
    c_67_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x011x1z10zzzz0010z010x1zzx100x1zzxzxzxxxzzxzzxzxzzzzzxxxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
