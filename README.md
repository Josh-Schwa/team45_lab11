# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Joshua Johnson
Hannah Weakley

## Summary

This lab was very informative about how to use D-flip flops in connection with adders. It clarified for me how we use D-flip flops to store bits. I learned that D-flip flops only can take one bit of input at a time and since full adders add one bit at a time, there is one D-flip flop for every full adder. After sitting down and walking through everything with the slides open, the diagram in the lab made sense to me. I didn't finish the lab on Tuesday, but I came to Thursday's lab and finished it. In Thursday's lab I struggled a lot with the final d-flip flop after the comparator. I learned why using an XOR gate there between the hitpoint and the previous output toggles the output led each time you reach the end of the count. It was a very informative and cool lab to experience. I think there was a bug with using posedge where I had included an "or" statement that wasn't necessary and was actually causing problems. If nothing else, this lab definitely got me used to how to read the simulation results in a clearer way.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
Whenever the counter reaches the desired count, it toggles. Since a single Hz comes from the transition from high to low and back to high, we have to toggle twice to get the value of one Hz.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The ripple counter goes to all 1s on the first clock cycle since that is our desired count and then it counts dowwards from there. We had to initialize the T flip flops with our desired value.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
C_val = (100 mHz / 2) * (1 / 1 khz)
C_val = 100,000,000 / 2000
C_val = 50,000
2^15 < log_2(50,000) < 2^16 so you would need to take the greater capacity 2^16 to be able to store all the bits you need. The width is therefore 16 bits.
