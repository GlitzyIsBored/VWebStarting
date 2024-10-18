module main
import vweb

struct App {
    vweb.Context
}

fn main() {
    println("So it is written.")
    vweb.run(&App{}, 8080)
}

pub fn (mut app App) index() vweb.Result {
    return app.text("So it really was written.")
}
