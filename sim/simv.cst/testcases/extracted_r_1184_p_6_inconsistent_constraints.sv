class c_1184_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1184_6;
    c_1184_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11010zxxxxzzzxzz00zxx10xz100z1zzzzxzzzzzzzxxxxxxzzxzzzxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
