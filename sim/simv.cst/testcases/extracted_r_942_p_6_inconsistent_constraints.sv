class c_942_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_942_6;
    c_942_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzx0zx00111z01zz00x0z0011zx11xzxzxzxxzxxxzzzxxzzzxxxxzzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
