import { useRouter } from "next/router";

function blogpost() {
  let router = useRouter();
  let { blogpost } = router.query;
  return (
    <div>
      <h2>{blogpost}</h2>
    </div>
  );
}

export default blogpost;
