class c_1214_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1214_6;
    c_1214_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1x0z0zz00111xx1zx11x01110x01z1zxxxzzzxzxxxzxzxxzxzxzxzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
