class c_53_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_53_6;
    c_53_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x01xx00110z1010x0x0zz0000xz1zzzzxxxzzzzxzxzzxxzzxzxxzxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
