class c_173_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_173_6;
    c_173_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x010zxzzxzx11z1x1x0z0zz1zx0x00xzzzxxxzzxzzxxzzzzzzxzxxzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
