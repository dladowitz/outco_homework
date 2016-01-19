 # /**********************************************************************************
 #  *                                 Homework VII                                   *
 #  *                                                                                *
 #  *  Problem: Hash Table                                                           *
 #  *                                                                                *
 #  *  Prompt: Create a HashTable class/constructor.                                 *
 #  *          Name it HashTable (js) or hash_table (rb/py). Use separate chaining.  *
 #  *                                                                                *
 #  *          The HashTable will have the following properties:                     *
 #  *                                                                                *
 #  *          storage: An array of arrays.                                          *
 #  *                                                                                *
 #  *          buckets: The max number of buckets that your storage can contain.     *
 #  *                   Initialize your "buckets" at 8 buckets.                      *
 #  *                                                                                *
 #  *          size: The current number (total) of key-value pairs in the storage.   *
 #  *                Initialize your "size" to 0.                                    *
 #  *                                                                                *
 #  *          The HashTable will also have the following methods:                   *
 #  *                                                                                *
 #  *          hash: Method that takes a string as an input and outputs a number.    *
 #  *                We have provided to you the dbjb2 hashing function, so you do   *
 #  *                not need to write your own.                                     *
 #  *                                                                                *
 #  *          insert: Method that takes a key and a value as inputs, and places a   *
 #  *                  tuple ([key,value]) into the proper bucket.                   *
 #  *                  If the key already exists, it should update the value.        *
 #  *                  You should use separate chaining to handle collisions.        *
 #  *                                                                                *
 #  *          delete: Method that takes a key as its input, and looks for the       *
 #  *                  [key,value] and removes it from the bucket.                   *
 #  *                                                                                *
 #  *          retrieve: Method that a key as its input, and returns the value       *
 #  *                    stored at that key, or undefined if the key is not present. *
 #  *                                                                                *
 #  *  Input:  N/A                                                                   *
 #  *  Output: A HashTable instance                                                  *
 #  *                                                                                *
 #  *  What are the time and auxiliary space complexities of the various methods?   *
 #  *                                                                                *
 #  **********************************************************************************/

 # /**
 #  *  Extra Credit: Resize
 #  *
 #  *  Prompt: If the load factor reaches a critical 0.75 or higher, resize the HashTable
 #  *          by doubling the number of buckets, and reindexing all the key-value pairs.
 #  **/

  # // djb2: JavaScript

  # function djb2Code(str, buckets) {
  #   var hash = 5381;
  #   for (i = 0; i < str.length; i++) {
  #     char = str.charCodeAt(i);
  #     hash = ((hash << 5) + hash) + char; /* hash * 33 + c */
  #   }
  #   return hash % buckets;
  # };

  # # djb2: Ruby

  # def hash(str, buckets)
  #   hash = 5381

  #   str.split("").each do |i|
  #       char = i
  #       hash = ((hash << 5) + hash) + char.ord
  #   end

  #   return hash % buckets
  # end

  # # djb2: Python

  # def hash(str, buckets):
  #   # Simple hash function to hash a string, based on Dan Bernstein's djb2
  #   # Input: str - a string that is to be hashed
    
  #   # arbitrary large prime number to initialize
  #   hash = 5381

  #   # hash(i) = hash(i-1) * 33 + str[i]
  #   for char in str:
  #       hash = ((hash << 5) + hash) + ord(char)

  #   # Output: integer between 0 and buckets-1 (inclusive)
  #   return hash % buckets

  # // Java

  # package terrastore.router.impl;

  # public class DJBHashFunction implements HashFunction {

  #   public int hash(String value, int maxValue) {
  #       long hash = doHash(value);
  #       return (int) Math.abs(hash % maxValue);
  #   }

  #   @Override
  #   public String toString() {
  #       return this.getClass().getName();
  #   }

  #   private long doHash(String str) {
  #       long hash = 5381;

  #       for (int i = 0; i < str.length(); i++) {
  #           hash = ((hash << 5) + hash) + str.charAt(i);
  #       }

  #       return hash;
  #   }
  # }


 