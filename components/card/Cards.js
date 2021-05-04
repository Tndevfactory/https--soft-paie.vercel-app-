/** @format */
import Link from "next/link";
import React, { useState } from "react";
import { Card } from "antd";
import { useRouter } from "next/router";
import { format, parseISO } from "date-fns";
import { useQueryClient } from "react-query";
import { ProdCtx } from "../../contexts/ProductsContext";

import styles from "./Card.module.scss";

import {
  Button_st,
  ProfileCard_st,
  Toast_st,
  Cards_st,
} from "../styled-components";

const { Meta } = Card;

const Cards = ({ item, mDelete }) => {
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
    <div>
      <Card
        className={styles.card}
        hoverable
        cover={<img alt="example" src="https://picsum.photos/400/400" />}
      >
        <Meta title={item.description} description={item.price} />

        <Link href="/update/[upd]" as={`/update/${item.id}`}>
          <a
            onMouseEnter={async () => {
              await queryClient.prefetchQuery(
                ["product", item.id],
                () => apiShow(item.id),
                {
                  staleTime: 10 * 1000,
                }
              );
            }}
          >
            update {item.id}--{" "}
            {format(parseISO(item.created_at), "dd/MM/yyyy-kk:mm:ss")}
          </a>
        </Link>

        <Button_st
          //disabled={true}
          onClick={() => router.push("/add")}
          switchMode={switchMode}
        >
          add
        </Button_st>

        <Button_st
          onClick={() => {
            mDelete.mutate(item.id);
          }}
          disabled={mDelete.isLoading}
          switchMode={switchMode}
        >
          delete
        </Button_st>
      </Card>
      {/* <ProfileCard_st>
        <h1 className="username">John Doe</h1>
        <p className="dob">
          Date: <span>12th October, 2013</span>
        </p>
        <p className="gender">Male</p>
      </ProfileCard_st> */}
      {/* <Cards_st>test</Cards_st> */}
      {/* <Toast_st>info styled toast</Toast_st> */}
    </div>
  );
};

export default Cards;
