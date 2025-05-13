class c_612_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_612_6;
    c_612_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110xx00z0x1zxxxxz10xxz0x011xzzxzxzxzzzxxzxzzzzzxzxxxzxxxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
