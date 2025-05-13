class c_314_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_314_6;
    c_314_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x0z1z1z1zzz011xzx10xxx01x0101xxxxzzzxxxxzxzzxzzzzzxxxzxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
