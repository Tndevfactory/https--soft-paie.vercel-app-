import React, { useState } from "react";
import Cookies from "js-cookie";

const AppCookies = () => {
  const [mycookie, setMycookie] = useState("");
  const handleSetCookie = () => {
    Cookies.set("foo", "bar");
    if (Cookies.get("foo")) setMycookie(Cookies.get("foo"));
  };

  const handleRemoveCookie = () => {
    Cookies.remove("foo");
    setMycookie("");
  };
  React.useEffect(() => {
    setMycookie(Cookies.get("foo"));
  }, [mycookie]);
  return (
    <div>
      <h3>cookies value {mycookie} </h3>
      <button onClick={handleSetCookie}>set cookies</button>
      <button onClick={handleRemoveCookie}>remove cookies</button>
    </div>
  );
};

export default AppCookies;
