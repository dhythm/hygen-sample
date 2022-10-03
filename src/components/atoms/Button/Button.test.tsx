import React from "react";
import renderer from "react-test-renderer";
import { Button } from "./";

describe("atoms/Button", () => {
  it("Snap Shot", () => {
    const component = renderer.create(<Button />);
    const tree = component.toJSON();
    expect(tree).toMatchSnapshot();
  });
});