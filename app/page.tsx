import { BlogPosts } from "app/components/posts";

function yearsDelta(givenDate: Date): number {
	const currentDate = new Date();

	let years = currentDate.getFullYear() - givenDate.getFullYear();

	const currentMonth = currentDate.getMonth();
	const givenMonth = givenDate.getMonth();

	const currentDay = currentDate.getDate();
	const givenDay = givenDate.getDate();

	if (
		currentMonth < givenMonth ||
		(currentMonth === givenMonth && currentDay < givenDay)
	) {
		years--;
	}

	return years;
}

const givenDate = new Date("2020-02-01");
const yearsOfExperience = yearsDelta(givenDate);

export default function Page() {
	return (
		<section>
			<h1 className="mb-8 text-2xl font-semibold tracking-tighter">
				Carlos Lezama
			</h1>
			<p className="mb-4">
				{`Data Scientist and Software Engineer with ${yearsOfExperience} years of experience, excelling in a rapidly expanding startup environment.`}
			</p>
			<div className="my-8">
				<BlogPosts />
			</div>
		</section>
	);
}
