class c_1328_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1328_6;
    c_1328_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz00zz00xx000x01x1z0z0z110xxx1zxzzxxzxzzzzzzzzzxxxzxxxzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
