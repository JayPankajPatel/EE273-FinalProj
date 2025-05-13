class c_222_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_222_6;
    c_222_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zxxzz110z0xzzx1xzzz11xz0zxz1xxzzzzxxxzzxxzxxzxzxzxzzxxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
