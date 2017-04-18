open Opium.Std
open Deal_term

type person = {
  name: string;
  age: int;
}

(* Example endpoints *)

let json_of_person { name ; age } =
  let open Ezjsonm in
  dict [ "name", (string name)
       ; "age", (int age) ]

let print_param = get "/hello/:name" begin fun req ->
    `String ("Hello " ^ param req "name") |> respond'
  end

let print_person = get "/person/:name/:age" begin fun req ->
    let person = {
      name = param req "name";
      age = "age" |> param req |> int_of_string;
    } in
    `Json (person |> json_of_person) |> respond'
  end

(* endof Example endpoints *)


let deal_term_calculation = post "/deal_term_calculations" begin fun req ->
    App.json_of_body_exn req |> Lwt.map (fun _json -> respond (`Json _json))
  end

let _ =
  App.empty
  |> print_param
  |> print_person
  |> deal_term_calculation
  |> App.run_command
