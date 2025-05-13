class c_921_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_921_6;
    c_921_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x0z100xxzxx1000zxxxz10xxx1110xzzxzzzxzzxzzxxzxzzxxxxxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
