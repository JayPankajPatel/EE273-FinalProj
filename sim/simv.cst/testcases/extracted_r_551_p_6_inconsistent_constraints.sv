class c_551_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_551_6;
    c_551_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz1z1011xx1x01101010z10z01011zxxxzzzxzxzxxxxxxzxzxzxzxxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
