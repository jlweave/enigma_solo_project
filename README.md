
  <h3 align="center">Enigma -Mod 1- Solo Project</h3>

  <p align="center">
    Lacey Weaver
    <br>
   
  </p>
</p>


## Enigma Machine

-Enigma was a machine used in World War Two by the Germans to encrypt and decrypt their messages. The Enigma machine was difficult to crack because it used several roters that would also rely on the date it was transcribed, meaning that the code was ever changing. A major flaw in the Enigma machine was that a letter could never be encrypted as itself. Alan Turing along with other researchs were finally able to crack the code with the help of a machine called Bombe. The Bombe machine was essentially thirty-six Enigma machines wired together and was able to decode a message in around 20 minutes. There are historians that believe that the cracking of Enigma was a turning point in WW2, allowing the Allies the ability to circumvent many attacks.


## Guidelines for this Project

For this project, we used Ruby as a tool for building an Enigma machine able to encrypt and decrypt. The algorithim will use four different shifts labeled A, B, C, and D. The alphabet used is based on 27 characters, with a space being included. In order to find the first part of the shift, there will be a random five digit number generated if a key is not implicitly given. the keys will be set up as follows: If the number generated is 02715 *A key: first two digits (02), *B key: second and third digits (27), *C key: third and fourth digits (71), *D key: fourth and fifth digits (15)

The second part will be the offset. This will use today's date again if not implicitely given a date. If the date given was August 4,1995, it would be converted to DDMMYY or 040895. This number is then squared (1672401025), and the last four of this number is taken (1025). The shifts are then arranged as follows: *A offset: The first digit (1), *B offset: The second digit (0), *C offset: The third digit (2), *D offset: The fourth digit (5).

Finally using these keys (02, 27, 71, 15) and offsets (1, 0, 2, 5), they are added together for the final shift. That would then be: *A: 3, *B: 27, *C: 73, *D:20. These numbers then represent the index changes for each letter. For example, "hello world" would be converted using this set of values to “keder ohulw”.


## Evalutation
3/3
Functionality - Enigma Class with encrypt and decrypt methods successfully implemented. Encrypt/decrypt command line interfaces successfully implemented.

3/3
Object Oriented Programming - Project is broken into logical components that are appropriately encapsulated. No classes are unreasonably small or large, or contain knowledge/information/behavior that they shouldn’t know about. Student can articulate the single responsibilities of the various components.

3/3
Ruby Conventions and Mechanics - Code is mostly properly indented, spaced, and lines are not excessively long. Class, method, variable, and file names follow convention. Some enumerables/data structures chosen are the most efficient tool for a given job, and students can speak as to why those enumerables/data structures were chosen. At least one hash is implemented in a way that makes logical sense.

2.9/3 
Test Driven Development - Every method is tested at both the unit and integration level, and completely verify expected behavior (i.e., if a single method does 3 things, all 3 things are explicitly tested). Obvious edge cases are addressed. git history demonstrates students are writing tests before implementation code. Test coverage metrics show coverage at 99% or greater.

3/3
Version Control - Minimum 30 commits and 3 pull requests. More than half of your pull requests include related and logical chunks of functionality, and are named and documented to clearly communicate the purpose of the pull request. No more than 3 commits include multiple pieces of functionality.

total 2.9
