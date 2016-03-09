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

class Hash_Table:
  def __init__(self):
    self.storage = []
    self.buckets = 8
    self.size = 0

  def hash(self, buckets, size):

  def insert(self, buckets, size):

  def delete(self, buckets, size):

  def retrieve(self, buckets, size):




