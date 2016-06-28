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


class Hash_Table
  attr_reader :buckets, :size, :storage

  def initialize(buckets = 8)
    @buckets = buckets
    @size = 0
    @storage = []
  end
end







def hash_function(key, size)
  debug = false
  hash = 2166136261
  prime = 16777619
  mod = 2 ** 32

  puts "\n--- key: #{key}"
  key.bytes.each do |byte|
    puts "byte: #{byte}" if debug
    hash = hash ^ byte; puts "hash ^ byte: #{hash}" if debug
    hash = (hash * prime) % mod; puts "(hash * prime) % mod: #{hash}" if debug
  end

  puts "Bucket: #{hash % size}"
  return hash % size
end


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





















 # //////////////////////////////////////////////////////////
 # ///////////////  DO NOT TOUCH TEST BELOW!!!  /////////////
 # //////////////////////////////////////////////////////////

 require 'test/unit'

 class HashTableClassTest < Test::Unit::TestCase
   def test_Hash_Table_properties_existence
     test = Hash_Table.new()

     assert_respond_to(test, :buckets)
     assert_respond_to(test, :storage)
     assert_respond_to(test, :size)
   end

   def test_Hash_Table_methods_existence
     test = Hash_Table.new()

     assert_respond_to(test, :hash)
     assert_respond_to(test, :insert)
     assert_respond_to(test, :delete)
     assert_respond_to(test, :retrieve)
   end
 #
 #   def test_Hash_Table_hashing_method
 #     test = Hash_Table.new()
 #
 #     assert_equal(1, test.hash('hello', 8))
 #   end
 #
 #   def test_Hash_Table_insert_a_key_value_pair
 #     test = Hash_Table.new()
 #
 #     assert_equal(0, test.storage.length)
 #     assert_equal(0, test.size)
 #
 #     test.insert('hello', 5)
 #
 #     assert_equal(1, test.size)
 #     assert_equal('hello', test.storage[1][0][0])
 #     assert_equal(5, test.storage[1][0][1])
 #   end
 #
 #   def test_Hash_Table_insert_a_second_key_value_pair
 #     test = Hash_Table.new()
 #
 #     assert_equal(0, test.storage.length)
 #     assert_equal(0, test.size)
 #
 #     test.insert('hello', 5)
 #
 #     assert_equal(1, test.size)
 #     assert_equal('hello', test.storage[1][0][0])
 #     assert_equal(5, test.storage[1][0][1])
 #
 #     test.insert('good', 10)
 #
 #     assert_equal(2, test.size)
 #     assert_equal('good', test.storage[6][0][0])
 #     assert_equal(10, test.storage[6][0][1])
 #   end
 #
 #   def test_Hash_Table_insert_should_handle_collisions
 #     test = Hash_Table.new()
 #
 #     assert_equal(0, test.storage.length)
 #     assert_equal(0, test.size)
 #
 #     test.insert('back', 5)
 #
 #     assert_equal(1, test.size)
 #     assert_equal('back', test.storage[6][0][0])
 #     assert_equal(5, test.storage[6][0][1])
 #
 #     test.insert('good', 10)
 #
 #     assert_equal(2, test.size)
 #     assert_equal('good', test.storage[6][1][0])
 #     assert_equal(10, test.storage[6][1][1])
 #   end
 #
 #   def test_Hash_Table_delete_method_should_delete_pair
 #     test = Hash_Table.new()
 #
 #     assert_equal(0, test.storage.length)
 #     assert_equal(0, test.size)
 #
 #     test.insert('hello', 5)
 #
 #     assert_equal(1, test.size)
 #     assert_equal('hello', test.storage[1][0][0])
 #     assert_equal(5, test.storage[1][0][1])
 #
 #     test.delete('hello')
 #
 #     assert_equal(0, test.size)
 #     assert_equal(undef, test.storage[6][0][0])
 #     assert_equal(undef, test.storage[6][0][1])
 #   end
 #
 #   def test_Hash_Table_delete_should_not_modify_size_when_key_not_found
 #     test = Hash_Table.new()
 #
 #     test.insert('hello', 5)
 #     test.insert('good', 10)
 #
 #     assert_equal(2, test.size)
 #
 #     test.delete('great')
 #
 #     expect(test.size).to.equal(2)
 #   end
 #
 #   def test_Hash_Table_retrieve_should_return_value_when_exists
 #     test = Hash_Table.new()
 #
 #     test.insert('hello', 5)
 #
 #     assert_equal(5, test.retrieve('hello'))
 #   end
 #
 #   def test_Hash_Table_retrieve_should_return_nil_when_key_does_not_exist
 #     test = Hash_Table.new()
 #
 #     test.insert('hello', 5)
 #
 #     assert_equal(nil, test.retrieve('good'))
 #   end
 #
 #   def test_Hash_Table_resize_should_double_the_number_of_buckets_when_the_size_exceeds_75_percent_of_bucket_capacity
 #     test = Hash_Table.new()
 #     test.insert('hello', 5)
 #     test.insert('good', 7)
 #     test.insert('haha', 10)
 #     test.insert('blah', 2)
 #     test.insert('foo', 3)
 #     test.insert('bar', 8)
 #     test.insert('taste', 1)
 #
 #     assert_equal(16, test.buckets)
 #   end
 #
 #   def test_Hash_Table_resize_should_halve_the_number_of_buckets_when_the_size_drops_below_25_percent_of_bucket_capacity
 #     test = Hash_Table.new()
 #
 #     test.insert('hello', 5)
 #     test.insert('good', 7)
 #     test.insert('haha', 10)
 #     test.insert('blah', 2)
 #     test.insert('foo', 3)
 #     test.insert('bar', 8)
 #     test.insert('taste', 1)
 #
 #     assert_equal(16, test.buckets)
 #
 #     test.delete('hello')
 #     test.delete('good')
 #     test.delete('haha')
 #     test.delete('blah')
 #
 #     assert_equal(8, test.buckets)
 #   end
 end
