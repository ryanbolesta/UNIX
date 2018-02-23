 #!/usr/bin/perl

 # To run:                      perl final_RyanBolesta.pl "sentence" "sentence2" ........

 # Author:			Ryan Bolesta
 # Creation Date:		May 6, 2017
 # Due Date:		        May 10, 2017
 # Course:			CSC 352
 # Professor:		        Dr. Frye
 # Assignment:		        perl program
 # Filename:		        final_RyanBolesta.pl
 # Purpose:                     Learn the basics of perl programming by
 #                              creating a program that splits a string,
 #                              translates each word in the string, and then
 #                              joins back into a single string and prints.

  use strict;
  use warnings;

  my $args = @ARGV; #number of sentences
  my $counter = 0; #counter for sentences

  # usage clause
  if($args < 1){
          print "ERROR: USAGE --> perl final_RyanBolesta.pl \"sentence(s) each one within double quotes\"\n";
          exit 0
  }

  while($counter < $args){

          my @words = split(/ /, $ARGV[$counter]); #split words in the sentence
          my $numWords = @words; #number of words in the sentence
          my $sCounter = 0; #counter for words in the current sentence
          print "\nOriginal:\t$ARGV[$counter] \n";  #print original sentence

          while($sCounter < $numWords){
                  $words[$sCounter] =~ tr/rl/w/;        #translate word
                  $words[$sCounter] =~ tr/RL/W/;
                  $sCounter = $sCounter + 1;            #increment counter
          }
          my $newsentence = join(' ', @words);          # join words to new string
          print "Elmer Fudd:\t$newsentence\n";          # print new sentence
          $counter = $counter + 1;                      #move on to next sentence
  }
  print "\n";
