class c_37_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_37_6;
    c_37_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz001z00z011x0zz10z1xz0xxxxxz1zxxxzxzzxxzzzzxzzzxzzxzxzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
