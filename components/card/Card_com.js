/** @format */
import Link from "next/link";
import React, { useState } from "react";
import { useRouter } from "next/router";
import { useQueryClient } from "react-query";
import { ProdCtx } from "../../contexts/ProductsContext";
import { Card_com_st } from "../styled-components/cards/Card_com_st";

const Card_com = ({ item, mDelete }) => {
  const [isHovered, setHovered] = useState(false);

  const queryClient = useQueryClient();
  const router = useRouter();

  React.useEffect(() => {
    //console.log(isHovered);
  }, [isHovered]);

  const [prodMethods, prodStates] = ProdCtx();
  const { apiShow } = prodMethods;
  const { switchMode } = prodStates;

  const buttonVariants = {
    hover: {
      scale: 1.5,
    },

    pressed: {
      scale: 0.5,
    },

    rest: {
      scale: 1,
    },
  };

  return (
    <Card_com_st>
      <figure>
        <img
          src="https://static2.cilory.com/189111-thickbox_default/no-logo-royal-blue-full-sleeves-henley-t-shirt.jpg"
          alt="t-shirt"
        />
      </figure>
      <section className="details">
        <div className="min-details">
          <h1>
            Remera <span>azul</span>
          </h1>
          <h1 className="price">$45.99</h1>
        </div>

        <div className="options">
          <div className="options-size">
            <h1>sizes</h1>
            <ul>
              <li>xs</li>
              <li>s</li>
              <li>m</li>
              <li>l</li>
              <li>xl</li>
            </ul>
          </div>

          <div className="options-colors">
            <h1>colors</h1>
            <ul>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
            </ul>
          </div>
        </div>
        <a href="#" className="btn">
          add to cart
        </a>
      </section>
    </Card_com_st>
  );
};

export default Card_com;
