class c_388_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_388_6;
    c_388_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx100z1xx010zz10000z1z0xzz0xz1xzzzzzzzzxxxzzzzxzxzzxzzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
