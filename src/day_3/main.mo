//Imports
import Array "mo:base/Array";
import Nat "mo:base/Nat";

actor {
//Challenge 1 - swap
private func swap(array : [Nat], i : Nat, j : Nat) : [Nat]{
  var mutable_array : [var Nat] = Array.thaw<Nat>(array);
  var temp : Nat = mutable_array[j];
  mutable_array[j] := mutable_array[i];
  mutable_array[i] := temp;
  return Array.freeze<Nat>mutable_array;
};

public func test_swap(array : [Nat]) : async [var Nat] {
  let test_array = [1,2,3,4,5,6,7,8,9];
  return swap(Array.freeze<Nat>test_array, 2, 3);
};

//Challenge 2 - init_count
// public func init_count(n : Nat) : async Array [Nat];{}
//   var array : Array = ;
//   return();
// };

//Challenge 3 - seven
// public func seven(array :[Nat]): async Text{
// };

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
