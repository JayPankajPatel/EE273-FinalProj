class c_449_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_449_6;
    c_449_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z00z01xx1100zz010z11z0x100xxz1xxzzzzzzxzzxzzzxxxzxzxzzzzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
