class c_814_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_814_6;
    c_814_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z1x111x00xxz00x101x1z11zzxz1xxzxxzxzzxxzxzxzzzxxxzzzxxzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
