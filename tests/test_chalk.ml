let chk str = Printf.printf "◌ Should be %s and normal\n" str

let test_colors () : unit =
  chk (Chalk.red "red");
  chk (Chalk.green "green");
  chk (Chalk.yellow "yellow");
  chk (Chalk.blue "blue");
  chk (Chalk.magenta "magenta");
  chk (Chalk.cyan "cyan");
  chk (Chalk.gray "gray");
  chk (Chalk.white "white");
  print_endline ""

let test_light_colors () : unit =
  chk (Chalk.light_red "light_red");
  chk (Chalk.light_green "light_green");
  chk (Chalk.light_yellow "light_yellow");
  chk (Chalk.light_blue "light_blue");
  chk (Chalk.light_magenta "light_magenta");
  chk (Chalk.light_cyan "light_cyan");
  chk (Chalk.light_gray "light_gray");
  print_endline ""

let test_bg_colors () : unit =
  chk (Chalk.bg_red "bg_red");
  chk (Chalk.bg_green "bg_green");
  chk (Chalk.bg_yellow "bg_yellow");
  chk (Chalk.bg_blue "bg_blue");
  chk (Chalk.bg_magenta "bg_magenta");
  chk (Chalk.bg_cyan "bg_cyan");
  chk (Chalk.bg_gray "bg_gray");
  chk (Chalk.bg_white "bg_white");
  print_endline ""

let test_bg_light_colors () : unit =
  chk (Chalk.bg_light_red "bg_light_red");
  chk (Chalk.bg_light_green "bg_light_green");
  chk (Chalk.bg_light_yellow "bg_light_yellow");
  chk (Chalk.bg_light_blue "bg_light_blue");
  chk (Chalk.bg_light_magenta "bg_light_magenta");
  chk (Chalk.bg_light_cyan "bg_light_cyan");
  chk (Chalk.bg_light_gray "bg_light_gray");
  print_endline ""

let test_other () : unit =
  chk (Chalk.bold "bold");
  chk (Chalk.underline "underline");
  chk (Chalk.invert "invert");
  print_endline ""

let test_compound () : unit =
  chk ("red & bold" |> Chalk.red |> Chalk.bold);
  chk ("bold & green" |> Chalk.bold |> Chalk.green);
  chk ("underline & yellow" |> Chalk.underline |> Chalk.yellow);
  chk ("invert & magenta" |> Chalk.invert |> Chalk.magenta);
  chk ("red -> blue" |> Chalk.red |> Chalk.blue);
  chk ("blue -> red" |> Chalk.blue |> Chalk.red);
  print_endline ""

let () : unit =
  print_endline ("\nRUNNING TESTS:\n" |> Chalk.bold);
  test_other ();
  test_colors ();
  test_light_colors ();
  test_bg_colors ();
  test_bg_light_colors ();
  test_compound ();
  print_endline ""
