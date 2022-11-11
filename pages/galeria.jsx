import Head from "next/head";
import Images from "../components/galery/card";

export default function Home() {
  return (
    <div>
      <Head>
        <title>Dashboard | Coclima</title>
      </Head>

      <main className="m-6 sm:mx-10 sm:mt-10">
        <h1 className="text-4xl font-medium text-green-500">Galeria</h1>
        <h2 className="mt-2 text-lg leading-6 text-gray-700 font-regular">
          Mostre que sua empresa está preocupada em construir um mundo melhor!
        </h2>
        <div className="mt-10"></div>
        <Images></Images>
      </main>
    </div>
  );
}
