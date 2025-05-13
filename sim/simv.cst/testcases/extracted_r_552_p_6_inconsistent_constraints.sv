class c_552_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_552_6;
    c_552_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxxxz1z00x0101110z1xx1zx0z0zx1xxxxxxzxzxxxzxxxxxzzzxxxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
