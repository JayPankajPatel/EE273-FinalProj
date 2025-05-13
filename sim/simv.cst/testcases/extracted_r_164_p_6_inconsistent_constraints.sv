class c_164_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_164_6;
    c_164_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0xxzxzxxz1z01x0xz1xxx110z000z1zxxxxzzzxxxzzxzxxxxzxzxzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
