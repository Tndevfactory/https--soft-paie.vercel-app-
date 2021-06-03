/** @format */
import { motion } from "framer-motion";
import Button1 from "../buttons/Button1";

import React, { useState, useRef } from "react";

import { useQuery, useMutation, useQueryClient } from "react-query";
import styled, { css } from "styled-components";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";

import Image from "next/image";
import Link from "next/link";
import chroma from "chroma-js";


import { FaSearch, FaRegEdit, FaTrashAlt } from "react-icons/fa";

const Desktop = styled(motion.div)`
  min-width: 70vw;
  .row_search {
    padding: 1rem;
    .form_search {
      display: flex;
      gap: 2px;
    }
    input {
      border: 1px #bbb solid;
      border-radius: 5px;
      padding: 0em 1em;
      height: 2em;
      &:focus {
        border: 1px #888 solid;
        outline: none;
      }
    }
  }
  .row_fixed {
    border-top-right-radius: 6px;
    border-top-left-radius: 6px;

    width: 100%;
    padding: 0.3rem;
    display: flex;
    font-weight: 400;
    font-size: 0.9rem;
    letter-spacing: 0.5px;
    font-family: ${({ ui }) => ui.navFont};
    justify-content: space-around;
    background: ${({ switchMode, ui }) =>
      switchMode ? chroma(ui.dark) : chroma(ui.light)};

    color: ${({ switchMode, ui }) =>
      switchMode
        ? chroma(ui.dark).luminance() < 0.4
          ? chroma(ui.dark).brighten(5)
          : chroma(ui.dark).darken(3)
        : chroma(ui.light).luminance() < 0.4
        ? chroma(ui.light).brighten(5)
        : chroma(ui.light).darken(3)};

    .fixed_nom {
      position: relative;
      margin-left: -3rem;
    }
  }
  /* .admin_row {
    box-shadow: 0px 0.31px 0.5px 1px rgba(200, 0, 0, 0.3),
      0px -0.31px 0.5px 1px rgba(200, 0, 0, 0.3);
  } */
  .row {
    margin: 0.3rem 0rem 0.3rem 0rem;
    width: 100%;
    padding: 0.3rem;
    font-size: 0.8rem;
    display: flex;
    border: solid 1px #999;
    justify-content: space-around;
    align-items: center;
    background: rgba(250, 250, 250, 0.8);
    transition: all 0.2s;

    & > * {
      width: 9%;
    }
    &:hover {
      box-shadow: 0.31px 1px 0.5px 1px rgba(0, 0, 0, 0.2);
    }

    .photo_id {
      margin-left: 2rem;
      width: 3.5%;
      border: 0.7px solid #ddd;
      border-radius: 50%;
      box-shadow: 0.2px 0.2px 0.6px 0.4px;
      border: 0.51px solid #888;
      ${({ switchMode, ui }) =>
        switchMode ? chroma(ui.dark) : chroma(ui.light)};
    }
    .photo_id_img {
      border-radius: 50%;
    }
    .employee_name {
      text-transform: capitalize;
      text-align: center;
      display: flex;
      justify-content: flex-start;
    }
    .manager_name {
      text-align: center;
      display: flex;
      justify-content: center;
      .manager_name_select {
        text-transform: capitalize;
        width: 100%;
        padding: 0.15rem 0.12rem;
        font-size: 0.8rem;
        color: #333;
        background: rgba(250, 250, 250, 0.9);
        border: 0.1px solid rgba(200, 200, 200, 0.8);
        &:focus {
          outline: none;
          border: 1px solid #aaa;
        }
      }
    }
    .role_name {
      text-align: center;
      display: flex;
      justify-content: center;
      .role_name_select {
        text-transform: capitalize;
        width: 95%;
        padding: 0.15rem 0.12rem;
        font-size: 0.8rem;
        color: #333;
        background: rgba(250, 250, 250, 0.9);
        border: 0.1px solid rgba(200, 200, 200, 0.8);
        &:focus {
          outline: none;
          border: 1px solid #aaa;
        }
      }
    }
    .active_state {
      text-align: center;
      display: flex;
      justify-content: center;
      .active_state_select {
        width: 60%;
        padding: 0.15rem 0.12rem;
        font-size: 0.8rem;
        color: #333;
        background: rgba(250, 250, 250, 0.9);
        border: 0.1px solid rgba(200, 200, 200, 0.8);
        &:focus {
          outline: none;
          border: 1px solid #aaa;
        }
      }
    }
    .editer {
      text-align: center;
      display: flex;
      justify-content: center;
      .editer_button {
        background: ${() => chroma("orange")};
        color: #000;
        padding: 0.2rem;
        border-radius: 3px;
        cursor: pointer;
        border: none;
        font-size: 1.05rem;
      }
    }
    .supprimer {
      text-align: center;
      display: flex;
      justify-content: center;
      .supprimer_button {
        background: ${() => chroma("crimson")};
        color: white;
        border-radius: 3px;
        padding: 0.2rem;
        cursor: pointer;
        border: none;
        font-size: 1rem;
      }
    }
  }
  .inactif {
    background-color: rgba(200, 200, 200, 0.31);
  }
`;

const Mobile = styled(Desktop)`
  //large screen
  @media (min-width: 1920px) {
  }

  @media (min-width: 1536px) and (max-width: 1919px) {
  }

  @media (min-width: 1440px) and (max-width: 1535px) {
  }
  @media (min-width: 1366px) and (max-width: 1439px) {
  }
  @media (min-width: 1280px) and (max-width: 1365px) {
  }

  //mobile
  @media (max-width: 600px) {
    .row_fixed_desktop {
      display: none;
    }
    .row_desktop {
      display: none;
    }
    .editer {
      margin-left: 0rem;
    }
    .supprimer {
      /* margin-left: 1rem; */
      margin-right: 0rem;
    }
  }
  @media (min-width: 375px) and (max-width: 600px) {
  }

  @media (min-width: 361px) and (max-width: 374px) {
  }
  @media (max-width: 360px) {
  }
`;
// controlleur server ProfileController
// crudEmployeeAdmin  method == component react
const crudEmployeeAdmin = ({ setSelectSection }) => {
  const queryClient = useQueryClient();
  const [prodMethods, prodStates] = ProdCtx();

  const {
    authMethods,
    ressourcesMethods,
    roleMethods,
    hierarchieMethods,
    profilMethods,
    pdfMethods,
  } = prodMethods;

  const { apiPdf, downloadPdf } = pdfMethods;
  const { apiProfileCrudAdminShowAll } = profilMethods;
  const { apiHierarchieUpdate } = hierarchieMethods;
  const { apiRoleUpdate } = roleMethods;
  const { apiRessourceUpdate } = ressourcesMethods;
  const { apiDeleteUser } = authMethods;

  const {
    stal,
    setStal,
    ui,
    notification,
    setNotification,
    switchMode,
    DOMAIN,
  } = prodStates;

  const [sectionSelector, setSectionSelector] = useState("");
  const [employees, setEmployees] = useState();

  // const breadcrumb = {
  //   root: "Employee",
  //   active: "Fiche de paie",
  // };

  const [managerId, setManagerId] = useState({
    value: "",
  });
  const [roleName, setRoleName] = useState();
  const [actif, setActif] = useState();

  const managerRefs = useRef([]);
  const roleRefs = useRef([]);
  const actifRefs = useRef([]);

  const options = [
    { value: "1", label: "belkahla iheb" },
    { value: "2", label: "belkadi bassem" },
    { value: "3", label: "maala abdelhamid" },
  ];
  const optionsRole = [
    { value: "1", label: "Admin" },
    { value: "2", label: "Manager" },
    { value: "3", label: "Employe" },
  ];
  const optionsActif = [
    { value: "1", label: "Actif" },
    { value: "0", label: "Non Actif" },
  ];

  // query city
  const { isSuccess, isLoading, refetch, error, data, isFetching } = useQuery(
    ["crud-admin"],
    () => apiProfileCrudAdminShowAll()
  );

  // query test
  if (isLoading) {
    console.log("loading");
  }

  if (error) {
    //console.log("error");
    // console.log(error.message);
  }
  if (isSuccess) {
    // console.log("error");
    // console.log(data);
  }

  let cfg = {
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  };

  const updHierarchie = async (id, fd, cfg) => {
    let res = await apiHierarchieUpdate(id, fd, cfg);
    queryClient.invalidateQueries("crud-admin");
    // queryClient.resetQueries("crud-admin", { exact: true });
    return res;
  };

  const updRole = async (id, fd, cfg) => {
    let res = await apiRoleUpdate(id, fd, cfg);
    queryClient.invalidateQueries("crud-admin");
    // queryClient.resetQueries("crud-admin", { exact: true });
    return res;
  };

  const updRessource = async (id, fd, cfg) => {
    let res = await apiRessourceUpdate(id, fd, cfg);
    queryClient.invalidateQueries("crud-admin");
    // queryClient.resetQueries("crud-admin", { exact: true });
    return res;
  };
  const deleteUser = async (id) => {
    let res = await apiDeleteUser(id);
    queryClient.invalidateQueries("crud-admin");
    // queryClient.resetQueries("crud-admin", { exact: true });
    return res;
  };

  const fd = new FormData();

  const handleManagerName = (e) => {
    fd.append("managerId", e.target.value);
    fd.append("_method", "put"); // spoof method laravel

    updHierarchie(e.target.id, fd, cfg)
      .then((res) => {
        if (res.ok) {
          //  setUpdRes({ ok: res.ok, response1: res.response });
          console.log(res.response, res.ok);
          console.log(res);
        } else {
          //  setUpdRes({
          //     ok: res.ok,
          //     response2: "Impossible d'éffectuer la modification",
          //   });
        }
      })
      .catch((err) => console.log(err));
  };

  const handleRoleName = (e) => {
    fd.append("roleId", e.target.value);
    fd.append("_method", "put"); // spoof method laravel

    updRole(e.target.id, fd, cfg)
      .then((res) => {
        if (res.ok) {
          //  setUpdRes({ ok: res.ok, response1: res.response });
          console.log(res.response, res.ok);
          console.log(res);
        } else {
          // setUpdRes({
          //   ok: res.ok,
          //   response2: "Impossible d'éffectuer la modification",
          // });
        }
      })
      .catch((err) => console.log(err));
  };

  const handleActif = (e) => {
    fd.append("actif", e.target.value);
    fd.append("_method", "put"); // spoof method laravel

    updRessource(e.target.id, fd, cfg)
      .then((res) => {
        if (res.ok) {
          //  setUpdRes({ ok: res.ok, response1: res.response });
          console.log(res.response, res.ok);
          console.log(res);
        } else {
          // setUpdRes({
          //   ok: res.ok,
          //   response2: "Impossible d'éffectuer la modification",
          // });
        }
      })
      .catch((err) => console.log(err));
  };

  const handleDelete = (e) => {
    console.log(e.currentTarget.id);

    deleteUser(e.currentTarget.id)
      .then((res) => {
        if (res.ok) {
          //  setUpdRes({ ok: res.ok, response1: res.response });
          console.log(res.response, res.ok);
          console.log(res);
        } else {
          // setUpdRes({
          //   ok: res.ok,
          //   response2: "Impossible d'éffectuer la modification",
          // });
        }
      })
      .catch((err) => console.log(err));
  };

  const handleEdit = (e) => {
    setStal(e.currentTarget.id);
    setSelectSection("DetailsView");
  };
  React.useEffect(() => {
    setEmployees(data);

    return () => {
      console.log("");
    };
  }, [data]);

  return (
    <Mobile ui={ui} switchMode={switchMode}>
      <div className="row_search">
        <form className="form_search">
          <input type="text" />
          <Button1 type="submit" disabled={false} width={2} height={1.75}>
            <FaSearch />
          </Button1>
        </form>
      </div>
      <div className="row_fixed">
        <div className="row_fixed_desktop">Photo </div>
        <div className="fixed_nom">Nom </div>
        <div className="row_fixed_desktop">Manager</div>
        <div className="row_fixed_desktop">Role</div>
        <div className="row_fixed_desktop">Actif</div>
        <div>Editer</div>
        <div>Supprimer</div>
      </div>

      {employees?.map((employee) => (
        // start row
        <div
          key={employee.id}
          className={`row ${employee.actif == 0 ? "inactif" : "null"}`}
          // className={`row `}
        >
          <div className="photo_id   row_desktop">
            <Image
              src={`${DOMAIN}/${
                employee.file === null
                  ? "uploads/users/default/user.jpg"
                  : employee.file
              }`}
              alt="employee"
              layout="responsive"
              quality={75}
              height={30}
              width={30}
              className="photo_id_img"
            />
          </div>
          <div className="employee_name">
            {employee.nom} {employee.prenom}
          </div>
          <div className={`manager_name row_desktop `}>
            <select
              className="manager_name_select"
              name="managerName"
              id={employee.id}
              ref={(ref) => managerRefs.current.push(ref)}
              value={employee.id == "3" ? 3 : employee.manager_id}
              //value={managerName ? managerName : employee.manager_id}
              onChange={handleManagerName}
            >
              {options.map((item) => (
                <option key={item.value} value={item.value}>
                  {" "}
                  {item.label}
                </option>
              ))}
            </select>
          </div>
          <div className="role_name  row_desktop">
            <select
              className="role_name_select"
              name="roleName"
              id={employee.id}
              ref={(ref) => roleRefs.current.push(ref)}
              value={employee.id == "3" ? 1 : employee.roleId}
              onChange={handleRoleName}
            >
              {optionsRole.map((item) => (
                <option key={item.value} value={item.value}>
                  {" "}
                  {item.label}
                </option>
              ))}
            </select>
          </div>
          <div className="active_state row_desktop">
            <select
              className="active_state_select"
              name="activeState"
              id={employee.id}
              value={employee.id == "3" ? 1 : employee.actif}
              onChange={handleActif}
            >
              {optionsActif.map((item) => (
                <option key={item.value} value={item.value}>
                  {" "}
                  {item.label}
                </option>
              ))}
            </select>
          </div>

          <div className="editer">
            <button
              onClick={handleEdit}
              id={employee.id}
              className="editer_button"
            >
              <FaRegEdit />
            </button>
          </div>

          <div className="supprimer">
            <button
              onClick={handleDelete}
              id={employee.id}
              className="supprimer_button"
            >
              <FaTrashAlt />
            </button>
          </div>
        </div>
        // end row
      ))}
    </Mobile>
  );
};

export default crudEmployeeAdmin;
