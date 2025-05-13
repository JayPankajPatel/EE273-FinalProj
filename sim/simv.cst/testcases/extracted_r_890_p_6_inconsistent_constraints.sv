class c_890_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_890_6;
    c_890_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxxx1110100xxz0z1xx10zzx0z1z10xxzxzxxxxzzxzzxzzxxxzxzzzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
