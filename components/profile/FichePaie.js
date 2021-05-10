import React, { useState, useRef, useEffect } from "react";
import styled, { css } from "styled-components";
import { motion } from "framer-motion";
import Link from "next/link";
import chroma from "chroma-js";
import Image from "next/image";
import Breadcrumb from "../breadcrumbs/Breadcrumb1";
import {
  FaUser,
  FaRegListAlt,
  FaRegMoneyBillAlt,
  FaMugHot,
  FaRecycle,
  FaParking,
  FaSkating,
} from "react-icons/fa";
import { useQuery, useMutation, useQueryClient } from "react-query";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";

const device = {
  mobile: `(max-width: 600px)`,

  tablet: `(min-width: 601px)`,

  desktop: `(min-width: 900px)`,
};

const ui = {
  dark: "#001d3d",
  light: "#00afb9",
};
const easing = [0.04, 0.62, 0.23, 0.98];

const FichePaie_st = styled(motion.div)`
  .fixed_block {
    background: red;
    position: -webkit-sticky;
    position: sticky;
    top: 85px;
    width: 100%;

    .search_zone {
      .search_zone_debut {
      }
      .search_zone_fin {
      }
      .search_zone_btn {
      }
    }
  }
  .heading {
    .heading_id {
    }
    .heading_date {
    }
    .heading_download {
    }
  }

  @media (max-width: 600px) {
    grid-template-columns: 1fr;
  }
`;

const FichePaie = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const { ui, notification, setNotification, switchMode } = prodStates;

  const [sectionSelector, setSectionSelector] = useState("");
  const breadcrumb = {
    root: "Employee",
    active: "Fiche de paie",
  };
  return (
    <FichePaie_st ui={ui} switchMode={switchMode}>
      <Breadcrumb content={breadcrumb} />
      <div className="fixed_block">
        <div className="search_zone">
          <div className="search_zone_debut">
            <input type="text" />
          </div>
          <div className="search_zone_fin">
            <input type="text" />
          </div>
          <div className="search_zone_btn">
            <button>search</button>
          </div>
        </div>
        <div className="heading">
          <div className="heading_id">id</div>
          <div className="heading_date">date</div>
          <div className="heading_download">telecharger</div>
        </div>
      </div>
      <div className="result">
        <div className="result_item">Lorem ipsum dolor sit amet.</div>
        <div className="result_item">Lorem ipsum dolor sit amet.</div>
        <div className="result_item">Lorem ipsum dolor sit amet.</div>
      </div>
      Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eveniet possimus
      explicabo nostrum accusantium vel veritatis dolorum, facilis debitis iste
      blanditiis aut, provident necessitatibus atque. Ullam suscipit officiis
      consectetur illum consequuntur molestiae culpa tempora, nobis quas, veniam
      ipsum placeat unde a sed facilis totam corrupti sit dolor exercitationem
      sunt optio. Necessitatibus, reiciendis ipsum quo est amet inventore rem
      pariatur illum laudantium mollitia. Officiis odio et in ipsum minima
      repellendus ipsa unde neque dolores est vitae harum culpa, laudantium
      molestias dolorum provident impedit eum nostrum magnam quas ea eos
      molestiae ab libero. Id dolorem, quod doloremque amet blanditiis
      dignissimos incidunt, voluptate quam rerum consequatur inventore quia et
      illo repellat, cumque delectus deserunt debitis sapiente voluptas itaque
      iure velit consequuntur! Maxime ea praesentium odit possimus recusandae
      suscipit unde alias consectetur minima accusamus natus modi reprehenderit
      repudiandae perspiciatis distinctio corrupti at veritatis dignissimos,
      nihil iste! Omnis, est nam, culpa maxime ad, amet deserunt minima ut sunt
      repellat obcaecati repudiandae natus rem magni dolores odit! Voluptate, a.
      Dicta voluptate eius illum nostrum ea assumenda molestiae odit, autem
      facilis nulla accusamus dolore eaque accusantium eos adipisci temporibus
      laborum repellendus quisquam at laboriosam in magni sequi iusto. Provident
      atque ipsum deleniti vero modi quae, recusandae iste deserunt beatae,
      expedita quaerat, pariatur sed sapiente? Amet, sit quidem? Sed consectetur
      deserunt sapiente veniam. Nisi perferendis maiores, facilis unde iure illo
      laudantium placeat blanditiis mollitia beatae voluptatem recusandae dolore
      voluptas voluptates asperiores voluptate labore consequatur. Mollitia rem
      molestiae, assumenda recusandae esse libero in at laboriosam, corrupti eum
      quidem officiis dolorum. Nobis tempore voluptates adipisci molestias ullam
      facere consectetur vero, laboriosam error? Adipisci itaque, sapiente, ex
      magni quod eius amet laboriosam mollitia tempora voluptatem praesentium
      dolor ipsam ea doloremque totam in! Rem quam aliquam, harum quibusdam
      illum vel voluptates, optio sed eligendi ipsam obcaecati velit possimus?
      At consequuntur neque esse consequatur repellendus earum iure deleniti
      velit delectus, corrupti quis voluptas molestiae sequi voluptatum fuga,
      placeat officia, provident aspernatur quos. Magni quisquam minima facilis
      nisi alias nihil temporibus, nulla consequatur quasi. Ducimus tempora,
      libero fuga dignissimos est dolorem adipisci corporis a quibusdam officiis
      iure tempore voluptatum debitis quas, earum dolores qui aspernatur ab,
      nobis totam. Itaque animi fuga, asperiores error sequi laborum et
      voluptate placeat id, eius dolores ab, similique recusandae ullam dolorum
      architecto modi vel? Cumque, dolorum ea accusamus accusantium blanditiis
      modi, temporibus voluptatem, illum explicabo eos nemo. Natus enim quasi
      est nihil laboriosam excepturi temporibus beatae placeat. Deleniti nostrum
      officia veniam, ab impedit reiciendis porro sint totam dignissimos
      suscipit quam neque odio. Veniam consectetur recusandae amet quos fugiat
      unde distinctio cum optio quibusdam, omnis minima eligendi necessitatibus
      cumque? Optio similique dignissimos debitis ab, ipsam quae, qui corporis
      facilis error ipsa tempore delectus, in perspiciatis vitae et quas saepe
      libero necessitatibus voluptate animi? Voluptates laborum iste et
      perferendis expedita quisquam provident veritatis, suscipit facere. Ipsa
      ducimus recusandae facere, eos eum consectetur alias voluptatibus earum
      magni voluptates molestiae quos maxime error voluptas, aspernatur quasi
      architecto. Delectus laudantium enim architecto excepturi esse commodi
      maiores quidem, iure in, maxime aspernatur tempora nisi sint veritatis
      repellendus. Ipsum facere, dolore debitis recusandae doloremque iste optio
      fuga magnam blanditiis, officia sequi error enim nesciunt adipisci
      voluptatibus deserunt ut aspernatur. Voluptatibus recusandae molestiae
      quas quasi quidem eius iure dolores sit laborum qui ducimus, eaque fugiat
      cupiditate soluta necessitatibus, ut suscipit perferendis ea, culpa earum
      adipisci voluptatem. Praesentium assumenda veniam pariatur inventore vero
      unde voluptatibus doloribus accusantium asperiores hic, omnis cumque
      dolorem commodi odio blanditiis perspiciatis? Quo tempora quisquam magni
      esse dolorum! Autem adipisci hic expedita quo corporis nisi aut asperiores
      non excepturi sed eius quas aspernatur laborum perferendis, nihil
      distinctio quae temporibus facilis minus accusamus voluptas cupiditate
      doloribus. Vel sequi eum rerum dolores, id quaerat facilis perspiciatis
      repudiandae quam consequatur, expedita voluptatem obcaecati? Quisquam
      impedit aut voluptate nobis consequuntur veritatis. Autem qui debitis
      ipsum, in dolorem facere quo placeat eaque neque, atque obcaecati
      molestiae architecto cum quasi aut commodi magni. Esse provident voluptate
      ipsum labore vero. Dolores, earum beatae quo ad nobis eum maxime magnam
      veniam voluptas? Molestiae voluptatum necessitatibus mollitia consequatur
      quia, similique reprehenderit? Natus tenetur impedit adipisci praesentium
      tempora sint, atque minima laborum, quos a numquam, quibusdam soluta
      laudantium magni cumque nobis labore. In doloribus id consequatur
      accusantium ea doloremque obcaecati? Alias id dolorem voluptates eligendi
      nemo in impedit consequatur laudantium rem necessitatibus pariatur
      praesentium commodi dolores mollitia cum optio, iure repellat laborum
      doloribus ratione officia eaque ipsa porro harum! Culpa, harum dicta, fuga
      commodi adipisci qui veritatis tempora vitae cum nesciunt delectus!
      Ratione facere dignissimos consequuntur. Ea nemo odio suscipit et
      consequuntur minima culpa fugiat error? Amet natus soluta quidem? Porro,
      perspiciatis. Minus quod blanditiis fuga, recusandae necessitatibus
      dignissimos sint animi esse consequuntur debitis ipsum ratione quasi ut ad
      beatae porro suscipit voluptatibus adipisci nemo aliquam distinctio
      incidunt saepe sed fugit. Officiis non placeat ea expedita perspiciatis
      dolor minima accusamus, blanditiis amet alias exercitationem error. Natus,
      dolor? Laudantium dolore doloribus ratione facilis aliquam? Et fugit amet
      sapiente consequuntur ut veniam, voluptatibus dolore blanditiis
      consectetur, magnam ab. Adipisci deserunt veniam labore at, dolor sint
      dolorem. Quisquam hic tempore odit, quidem illum accusamus et laudantium
      optio sed, ut, vitae sint placeat. Tempora hic modi nulla in esse nisi eum
      pariatur ipsa sint aut! Odio corporis sunt eos beatae mollitia natus cum
      ipsa quae, minus doloribus deleniti iure sint ad! Veniam facilis molestiae
      ratione excepturi. Iusto doloremque harum unde eaque sapiente atque quos
      soluta nesciunt sequi praesentium. Illo eos soluta repudiandae! Quia
      eligendi architecto corporis eius velit amet!
    </FichePaie_st>
  );
};

export default FichePaie;
