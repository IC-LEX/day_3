//Imports
import Array "mo:base/Array";
import Result "mo:base/Result";
import Nat "mo:base/Nat";
import Buffer "mo:base/Buffer";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
import Option "mo:base/Option";

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
//  public func seven(array :[Nat]) : async Text{ 
//    for(i in array.keys()){
//       let text_render = Nat.toText(array[i]);
//       if(Text.contains(text_render, #char '8')){
//         return("seven!");
//       };
//       return("No seven! (or do I mean 8 - who can say.");
//    };
//  };


//Challenge 4 - nat_opt_to_nat - Need switch
public func nat_opt_to_nat(n : ?Nat, m : Nat) : async Nat{
//if n is null, return m - (the default value in case of null
  switch(n){
    // case where n is null
    case(null){
      return m;
     };
// case where n is supplied as Nat
    case(?something){
      return something;
     };
   }; 
 };

//Challenge 5 - day_of_the_week
public func day_of_the_week(n : Nat ) :async ?Text{
  let days : [Text] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
    if(n > 0 and n < 8) {
      return ?days[n-1];
    };
  return(null);
    }; 
    

//Challenge 6 - populate_array - replaces nulls with zeros

let f = func (n : Nat) : Nat {
  if(n == null) {return(?0);};
  return(n);
}; 

public func populate_array(array:[?Nat]) : async [Nat]{
  return(Array.map<?Nat>(array, f ))
}

//Challenge 7 - sum_of_array

//Challenge 8 - squared_array

//Challenge 9 - increase_by_index


//Challenge 10 - Higher order function contains - Need to use , not Actor
// importing module into actor to test

};