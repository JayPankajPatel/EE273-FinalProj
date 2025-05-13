class c_580_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_580_6;
    c_580_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10110z0z1z1zzx1x111xxzx010zz1z1zzzzxzzxxzxxxxzzzzzxxxxzzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
