class c_421_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_421_6;
    c_421_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101xxxxzx1xx010xz0zx11xz1xxzzxxxxzzxzzxzxxzxxzxzxxxzxxzzxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
