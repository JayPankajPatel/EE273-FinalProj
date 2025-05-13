class c_1853_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1853_6;
    c_1853_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz1zx010x111z1zx1z0z10z011xx11xzzxxxxzxzzxzzzzzxxxxxxxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
