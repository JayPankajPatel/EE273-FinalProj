class c_416_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_416_6;
    c_416_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz1xzz0zzzx110xzzxx1zxxxxzxxz10xxzxxxxxzxzzzxxxxxxzzxzxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
