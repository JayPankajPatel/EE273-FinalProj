class c_167_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_167_6;
    c_167_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01010x011z011z01zx00xz111zxzzzzxzxzxzzzzzxxxxxzzxxxzzxzxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
