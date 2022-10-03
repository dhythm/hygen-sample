import React from "react";
import { storiesOf } from "@storybook/react";
import { Button } from "./";

storiesOf("atoms/Button", module)
  .add("default", () => <Button />);