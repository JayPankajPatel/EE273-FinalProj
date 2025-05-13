class c_1479_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1479_6;
    c_1479_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z100zxxxxxz1100zz10zx1zx111x10xxxzzxzxxxxzxzxxxzzxxxxxzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
