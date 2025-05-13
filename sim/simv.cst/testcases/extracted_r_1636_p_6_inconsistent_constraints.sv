class c_1636_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1636_6;
    c_1636_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxz1xxzzx11zzz1zxzx1zz11xxxz10zxzxzxxzxxzxzxxxzxxxxxxzzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
