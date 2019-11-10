module Promise = struct
  module Let_syntax = struct
    let map a ~f = Js.Promise.then_ (fun aa -> Js.Promise.resolve @@ f aa) a
    let bind a ~f = Js.Promise.then_ (fun aa -> f aa) a
  end
end

module Option = struct
  module Let_syntax = struct
    let map a ~f = match a with
      | None -> None
      | Some s -> Some (f s)
    let bind a ~f = match a with
      | None -> None
      | Some s -> f s
  end
end
