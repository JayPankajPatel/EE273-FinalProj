class c_693_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_693_6;
    c_693_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zzxz1x1zz011x11x0zxzxxxxz11z1zzxxzzxxxxxxxzzzxxxxzzzxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
