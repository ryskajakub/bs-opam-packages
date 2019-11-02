module Promise = struct
  module Let_syntax = struct
    let map a ~f = Js.Promise.then_ (fun aa -> Js.Promise.resolve @@ f aa) a
    let bind a ~f = Js.Promise.then_ (fun aa -> f aa) a
  end
end
