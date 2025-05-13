class c_36_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_36_6;
    c_36_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz00z010xzzx101z0x00000x000z10zxxzxxzzxzxzzzzzzzxzxxzzxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
