class c_1877_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1877_6;
    c_1877_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxz1zx1z11z00xzzx011x11000zzz10zzxxzzzzzxxxzzxxxzzxzxxxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
