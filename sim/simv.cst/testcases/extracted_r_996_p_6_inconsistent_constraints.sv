class c_996_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_996_6;
    c_996_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z010x01xxz11xz11z01xz1z10110xxxxxxzzzxzzxzxzzxzzzzzxxxxxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
