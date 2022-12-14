import Head from "next/head";
import { useState, useEffect } from "react";
import Users from "../../components/admin/usersList";
import Companies from "../../components/admin/companiesList";
import Partners from "../../components/admin/partnersList";
import Plantations from "../../components/admin/plantationsList";
import useSWR from "swr";
import Loader from "../../components/loader";
import { useRouter } from "next/router";
function classNames(...classes) {
  return classes.filter(Boolean).join(" ");
}

export default function Home() {
  const [current, setCurrent] = useState("users");
  const [tabs, setTabs] = useState([
    { name: "Usuários", scope: "users", current: true },
    { name: "Empresas", scope: "companies", current: false },
    { name: "Parceiros", scope: "partners", current: false },
    { name: "Plantios", scope: "plantations", current: false },
  ]);

  const router = useRouter();
  const tab = router.query.tab;
  useEffect(() => {
    function CurrentNav(scope) {
      setCurrent(scope);
      tabs.forEach((item) => {
        item.current = item.scope === scope;
      });
      setTabs(tabs);
    }
    if (
      tab === "users" ||
      tab === "companies" ||
      tab === "partners" ||
      tab === "plantations"
    ) {
      CurrentNav(tab);
    }
  }, [tab]);

  const fetcher = (...args) => fetch(...args).then((res) => res.json());
  const { data } = useSWR(`/api/admin`, fetcher);

  const users = data?.users;
  const companies = data?.companies;
  const partners = data?.partners;
  const plantations = data?.plantations;

  if (!data) {
    return <Loader></Loader>;
  }

  return (
    <div>
      <Head>
        <title>Dashboard | Coclima</title>
      </Head>

      <main className="m-6 sm:mx-10 sm:mt-10">
        <h1 className="text-4xl font-medium text-green-500">
          Área do Administrador
        </h1>
        <h2 className="mt-2 text-lg leading-6 text-gray-700 font-regular">
          Adicione, edite e delete dados.
        </h2>

        <div className="mt-10"></div>
        <div>
          <div className="block -mx-6 sm:mx-0">
            <nav
              className="relative z-0 flex divide-x divide-gray-200 shadow sm:rounded-lg"
              aria-label="Tabs"
            >
              {tabs.map((tab, tabIdx) => (
                <a
                  onClick={() => router.push(`/admin?tab=${tab.scope}`)}
                  key={tab.name}
                  href={tab.href}
                  className={classNames(
                    tab.current
                      ? "text-gray-900"
                      : "text-gray-500 hover:text-white hover:bg-green-500",
                    tabIdx === 0 ? "sm:rounded-l-lg" : "",
                    tabIdx === tabs.length - 1 ? "sm:rounded-r-lg" : "",
                    "group relative min-w-0 flex-1 overflow-hidden bg-white py-4 px-4 text-sm font-medium text-center focus:z-10 cursor-pointer"
                  )}
                  aria-current={tab.current ? "page" : undefined}
                >
                  <span>{tab.name}</span>
                  <span
                    aria-hidden="true"
                    className={classNames(
                      tab.current ? "bg-green-500" : "bg-transparent",
                      "absolute inset-x-0 bottom-0 h-0.5"
                    )}
                  />
                </a>
              ))}
            </nav>
          </div>
        </div>
        {current === "users" && <Users users={users}></Users>}
        {current === "companies" && (
          <Companies companies={companies}></Companies>
        )}

        {current === "partners" && <Partners partners={partners}></Partners>}
        {current === "plantations" && (
          <Plantations plantations={plantations}></Plantations>
        )}
      </main>
    </div>
  );
}
