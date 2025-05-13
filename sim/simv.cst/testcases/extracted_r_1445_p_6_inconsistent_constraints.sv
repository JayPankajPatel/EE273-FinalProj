class c_1445_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1445_6;
    c_1445_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z10xxz010xz000xz0x10xx1x1xxxxxxxxzzxxzzxzxxxzzxzxxzxzxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
