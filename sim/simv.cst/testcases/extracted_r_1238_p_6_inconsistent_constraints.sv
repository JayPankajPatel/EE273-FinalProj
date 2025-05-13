class c_1238_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1238_6;
    c_1238_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx0zz0x1zxx11zxx1xxzxx1zx0zxz1xxxxzzxxzxxxzxxxxxzzxxxzzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
