import Head from "next/head";
import useSWR from "swr";
import Companies from "../../components/receipts/companies";

export default function Home() {
  const fetcher = (...args) => fetch(...args).then((res) => res.json());
  const { data } = useSWR("/api/admin/receipts", fetcher, {
    refreshInterval: 60000,
  });

  return (
    <div>
      <Head>
        <title>Dashboard | Coclima</title>
      </Head>

      <main className="m-6 sm:mx-10 sm:mt-10">
        <div className="mt-10">
          <Companies companies={data}></Companies>
        </div>
      </main>
    </div>
  );
}
