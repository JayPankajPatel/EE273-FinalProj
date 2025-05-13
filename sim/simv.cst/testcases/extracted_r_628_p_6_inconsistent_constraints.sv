class c_628_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_628_6;
    c_628_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0z0xz0x1z0x11011x110xz0zx1zx1xzxzxxxxzzxxzxxxzxxzxzzxxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
