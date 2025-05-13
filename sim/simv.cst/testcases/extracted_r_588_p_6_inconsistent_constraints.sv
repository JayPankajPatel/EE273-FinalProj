class c_588_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_588_6;
    c_588_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x110z1111xz11111x1zxx1z101z0zxxxzxxzxzzxxxzxzzxxxxxxxzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
