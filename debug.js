const sass = require("./dart-sass/build/sass.dart.js")

sass.renderSync({
  data: [
    '@warn "WATCH OUT!";',
    '@debug 0.0001%;',
  ].join("\n"),
  logger: {
    warn: m => console.log(`warning: ${m}`),
    debug: m => console.log(`debug: ${m}`),
  },
})
