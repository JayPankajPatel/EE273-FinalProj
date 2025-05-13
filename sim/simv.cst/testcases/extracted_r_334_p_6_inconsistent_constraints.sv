class c_334_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_334_6;
    c_334_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz11x011zzzzx0001zxxx1z1xx0z00xzxzxxxzzxxzzzzzxzxxzzxzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
