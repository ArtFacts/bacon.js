require("../../src/interval")
Bacon = require("../../src/core").default
expect = require("chai").expect

{
  expectStreamEvents,
  expectStreamTimings,
  take,
  t
} = require("../SpecHelper")

describe.only "Bacon.interval", ->
  describe "repeats single element indefinitely", ->
    expectStreamTimings(
      -> take 3, Bacon.interval(t(1), "x")
      [[1, "x"], [2, "x"], [3, "x"]])
  it "toString", ->
    expect(Bacon.interval(1, 2).toString()).to.equal("Bacon.interval(1,2)")
