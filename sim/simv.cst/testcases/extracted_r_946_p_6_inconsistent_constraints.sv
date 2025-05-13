class c_946_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_946_6;
    c_946_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zx1zzx011z0xxzz1xxz100100xzxx1zxzxxxxzxxxzxzzzzxzxzxxzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
