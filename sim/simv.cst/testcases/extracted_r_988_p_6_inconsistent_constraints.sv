class c_988_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_988_6;
    c_988_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z1zz0110xx11zzz1z110z1zxzx001xxzxxxxxxxzzzxxxxxzzzzxxzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
