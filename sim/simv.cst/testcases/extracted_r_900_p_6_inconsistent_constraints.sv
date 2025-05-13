class c_900_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_900_6;
    c_900_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xz0zx11z1zz1z1z110xz10x1zz001xxxzzzzzzxzzxxzzzxzzxxxxzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
