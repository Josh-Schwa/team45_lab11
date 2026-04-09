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
Each D-flip flop has a feedback loop that feeds back into the full adder and the output of the full adder therefore back into the input for the D-flip flop. Since the D flip flop outputs only on the clock rising edge, it will have to wait between its first time and the second time for the clock to reach that rising edge. This takes twice the amount of time and therefore half of the frequency. Each time you feedback, you are taking the previous output from the D-flip flop and waiting an additional clock cycle.


### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

