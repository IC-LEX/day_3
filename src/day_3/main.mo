//Imports
import Array "mo:base/Array";
import Result "mo:base/Result";
import Nat "mo:base/Nat";
import Buffer "mo:base/Buffer";
import Iter "mo:base/Iter";
import Text "mo:base/Text";

actor {
//Challenge 1 - swap
private func swap(array : [Nat], i : Nat, j : Nat) : [Nat]{
  var mutable_array : [var Nat] = Array.thaw<Nat>(array);
  var temp : Nat = mutable_array[j];
  mutable_array[j] := mutable_array[i];
  mutable_array[i] := temp;
  return Array.freeze<Nat>(mutable_array);
};

public func test_swap(array : [Nat], i : Nat, j : Nat) : async [Nat] {
  return swap(array, i, j);
};

//Challenge 2 - init_count
 public func init_count(n : Nat) : async [Nat] {
    let array_1 : [Nat] = Array.tabulate<Nat>(n, func(i: Nat) : Nat { i });
    };

//Challenge 3 - seven
 public func seven(array :[Nat]) : async Text{ 
   for(i in array.keys()){
      let text_render : Text = Nat.toText(array[i]);
      if(Text.contains(text_render, #char '8')){
        return("seven!");
      };
      return("No seven! (or do I really mean 8 - who knows.");
   };
 };

//    Debug.print(array_1);
//    return "Working";


//Challenge 4 - nat_opt_to_nat - Need switch
// public func nat_opt_to_nat(n : ?Nat, m : Nat) : async Nat{
//if n is null, return m - (the default value in case of null
// };

//Challenge 5 - day_of_the_week

//Challenge 6 - populate_array

//Challenge 7 - sum_of_array

//Challenge 8 - squared_array

//Challenge 9 - increase_by_index


//Challenge 10 - Higher order function contains - Need to use , not Actor
// importing module into actor to test

};
