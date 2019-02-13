puts "begin seed"

sizes = ["small", "medium", "large"]

LocationType.create(category: "Park")
LocationType.create(category: "Museum")

5.times do
  User.create(username: Faker::Internet.username, name: Faker::Name.name, password: "test", age: Faker::Number.between(10, 100))
end
 ##Museums
new_museum = Location.create(name: "New Museum",
  neighborhood: "Lower East Side",
  location_type_id: 2,
  cost_of_admission: 18,
  image_url: "https://cdn.archpaper.com/wp-content/uploads/2017/02/21323r2-New_Museum_New_York2.jpg",
  description: "The New Museum of Contemporary Art, founded in 1977 by Marcia Tucker, is a museum in New York City at 235 Bowery, on Manhattan's Lower East Side. It is among the few contemporary art museums worldwide exclusively devoted to presenting contemporary art from around the world."
)

Location.create(name: "American Museum of Natural History",
  neighborhood: "Upper West Side",
  location_type_id: 2,
  cost_of_admission: 23,
  image_url: "http://www.vaejovidae.com/AMNH.jpg",
  description: "The American Museum of Natural History, located on the Upper West Side of Manhattan, New York City, is one of the largest museums in the world."
)

Location.create(name: "Metropolitan Museum of Art",
  neighborhood: "Upper East Side",
  location_type_id: 2,
  cost_of_admission: 25,
  image_url: "https://imgs.6sqft.com/wp-content/uploads/2014/11/21020631/the-met-museum.jpg",
  description: "The Metropolitan Museum of Art of New York City, colloquially 'the Met', is the largest art museum in the United States. With 7.06 million visitors to its three locations in 2016, it was the third most visited art museum in the world, and the fifth most visited museum of any kind."
)

Location.create(name: "Solomon R. Guggenheim Museum",
  neighborhood: "Upper East Side",
  location_type_id: 2,
  cost_of_admission: 25,
  image_url: "https://i1.wp.com/www.guggenheim.org/wp-content/uploads/2007/12/gen-press-guggenheim-foundation-image-3.jpg",
  description: "the gugg"
)

Location.create(name: "Whitney Museum of American Art",
  neighborhood: "Meatpacking District",
  location_type_id: 2,
  cost_of_admission: 25,
  image_url: "https://cdn.vox-cdn.com/uploads/chorus_image/image/57571565/whitney_new.0.0.jpg",
  description: "The Whitney Museum of American Art – known informally as the 'Whitney' – is an art museum located in Manhattan. It was founded in 1930 by Gertrude Vanderbilt Whitney, a wealthy and prominent American socialite and art patron after whom the museum is named. The Whitney focuses on 20th- and 21st-century American art."
)

Location.create(name: "Brooklyn Museum",
  neighborhood: "Prospect Heights",
  location_type_id: 2,
  cost_of_admission: 16,
  image_url: "https://media.timeout.com/images/103264554/630/472/image.jpg",
  description: "The Brooklyn Museum is an art museum located in the New York City borough of Brooklyn. At 560,000 square feet, the museum is New York City's third largest in physical size and holds an art collection with roughly 1.5 million works."
)

Location.create(name: "Jewish Museum",
  neighborhood: "Upper East Side",
  location_type_id: 2,
  cost_of_admission: 18,
  image_url: "https://thejewishmuseum.org/images/the_jewish_museum/jewish-museum-new-banner.jpg",
  description: "The Jewish Museum is an art museum and repository of cultural artifacts, housed at 1109 Fifth Avenue, in the former Felix M. Warburg House, along the Museum Mile in the Upper East Side of Manhattan, New York City."
)

Location.create(name: "The Frick Collection",
  neighborhood: "Upper East Side",
  location_type_id: 2,
  cost_of_admission: 22,
  image_url: "https://media.timeout.com/images/103264554/630/472/image.jpg",
  description: "The Frick Collection is an art museum located in the Henry Clay Frick House on the Upper East Side in Manhattan, New York City at 1 East 70th Street, at the northeast corner with Fifth Avenue. It houses the collection of industrialist Henry Clay Frick."
)

Location.create(name: "MoMA PS1",
  neighborhood: "Long Island City",
  location_type_id: 2,
  cost_of_admission: 10,
  image_url: "https://archinect.imgix.net/uploads/85/85386641d282d347c371bac4ac8ba51f.jpg",
  description: "MoMA PS1 is one of the largest art institutions in the United States dedicated solely to contemporary art. It is located in the Long Island City neighborhood in the borough of Queens, New York City."
)

##Parks
Location.create(name: "Central Park",
  neighborhood: "Upper West Side",
  size: "843 acres",
  location_type_id: 1,
  cost_of_admission: 0,
  image_url: "https://cdn.vox-cdn.com/thumbor/1i4TW0_PBv9UOO03Ek1HaQW809I=/0x0:2460x1640/1200x900/filters:focal(1034x624:1426x1016)/cdn.vox-cdn.com/uploads/chorus_image/image/55997615/shutterstock_384332770.0.jpg",
  description: "big ol park in manhattan"
)

Location.create(name: "Prospect Park",
  neighborhood: "a lot",
  size: "526 acres",
  location_type_id: 1,
  cost_of_admission: 0,
  image_url: "https://cdn.vox-cdn.com/thumbor/1i4TW0_PBv9UOO03Ek1HaQW809I=/0x0:2460x1640/1200x900/filters:focal(1034x624:1426x1016)/cdn.vox-cdn.com/uploads/chorus_image/image/55997615/shutterstock_384332770.0.jpg",
  description: "big ol park in brooklyn"
)

Location.create(name: "Union Square",
  neighborhood: "Union Square",
  size: "9 acres",
  location_type_id: 1,
  cost_of_admission: 0,
  image_url: "https://cdn.vox-cdn.com/thumbor/1i4TW0_PBv9UOO03Ek1HaQW809I=/0x0:2460x1640/1200x900/filters:focal(1034x624:1426x1016)/cdn.vox-cdn.com/uploads/chorus_image/image/55997615/shutterstock_384332770.0.jpg",
  description: "Opened in 1839 and redesigned in 1872 by Frederick Law Olmsted and Calvert Vaux to accommodate mass congregations of New Yorkers, Union Square Park has served as home base for countless community events and festivals-from the first Labor Day parade in 1882 to workers' rallies in the 1930s to the first Earth Day in 1970 to the current, wildly popular Greenmarket.  This former burial ground has seamlessly transitioned from a town square to a bustling City park, and as such, it is the deserved home of statues depicting distinguished men like George Washington, Abraham Lincoln, Mohandas Gandhi, and Marquis de Lafayette."
)

Location.create(name: "City Hall Park",
  neighborhood: "Civic Center",
  size: "20,000 ft²",
  location_type_id: 1,
  cost_of_admission: 0,
  image_url: "https://upload.wikimedia.org/wikipedia/commons/f/f5/City_Hall_Park_-_New_York_City.jpg",
  description: "Greenspace offering a respite from nearby government buildings with lawns, benches & a fountain."
)

Location.create(name: "Bowling Green",
  neighborhood: "Financial District",
  size: "21,780 ft²",
  location_type_id: 1,
  cost_of_admission: 0,
  image_url: "https://www.nycgovparks.org/photo_gallery/full_size/18836.jpg",
  description: "Bowling Green is a small public park in the Financial District of Lower Manhattan, New York City, at the southern end of Broadway, next to the site of the original Dutch fort of New Amsterdam."
)

Location.create(name: "Bryant Park",
  neighborhood: "Midtown",
  size: "9.6 acres",
  location_type_id: 1,
  cost_of_admission: 0,
  image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/New-York_-_Bryant_Park.jpg/650px-New-York_-_Bryant_Park.jpg",
  description: "Bryant Park is a 9.603-acre privately managed public park located in the New York City borough of Manhattan. It is located between Fifth and Sixth Avenues and between 40th and 42nd Streets in Midtown Manhattan."
)

Location.create(name: "Randall's Island",
  neighborhood: "Randall's Island",
  size: "256 acres",
  location_type_id: 1,
  cost_of_admission: 0,
  image_url: "http://spinlister-blog.s3.amazonaws.com/2016/06/Randalls-Island-Park-5.jpg",
  description: "480-acre urban park features restored wetlands, 90+ athletic fields, a community farm & recreation."
)

Location.create(name: "Highland Park",
  neighborhood: "Cypress Hills",
  size: "141 acres",
  location_type_id: 1,
  cost_of_admission: 0,
  image_url: "https://www.nycgovparks.org/photo_gallery/full_size/22644.jpg",
  description: "Highland Park is a park located on the Brooklyn-Queens border. The Brooklyn neighborhood to its south is commonly regarded as Cypress Hills part of the East New York neighborhood."
)

Location.create(name: "Madison Square Park",
  neighborhood: "Flatiron",
  size: "6.2 acres",
  location_type_id: 1,
  cost_of_admission: 0,
  image_url: "https://www.madisonsquarepark.org/wp-content/uploads/2016/04/our-mission.jpg",
  description: "Madison Square is a public square formed by the intersection of Fifth Avenue and Broadway at 23rd Street in the New York City borough of Manhattan. The square was named for James Madison, fourth President of the United States."
)

Location.create(name: "The Battery",
  neighborhood: "Financial District",
  size: "25 acres",
  location_type_id: 1,
  cost_of_admission: 0,
  image_url: "https://tclf.org/sites/default/files/microsites/landslide2017/img/batterypark/slide8-batterypark.jpg",
  description: "The Battery is a 25-acre public park located at the southern tip of Manhattan Island in New York City facing New York Harbor. The park and surrounding area is named for the artillery batteries that were positioned there in the city's early years to protect the settlement behind them.."
)


10.times do
  Review.create(content: Faker::TvShows::MichaelScott.quote, rating: Faker::Number.between(1, 5), user_id: Faker::Number.between(1, 5), location_id: Faker::Number.between(1, 5))
end

Event.create(start_date: DateTime.new(2019,1,22), end_date:DateTime.new(2019,4,14), title: "MARIANA CASTILLO DEBALL: FINDING ONESELF OUTSIDE", description: "Working in sculpture, printmaking, photography, and installation, Mariana Castillo Deball (b. 1975, Mexico City, Mexico) examines how knowledge and cultural heritage are produced, organized, measured, and authenticated. Her works often take inspiration from Mesoamerican iconography and narratives, considering their early-colonial transformations and their presence in Central America today. Exploring her philosophical interest in time and space as well as cosmology and depictions of natural order, Castillo Deball has engaged a diverse range of scholars in her research. Her works and installations often reflect Surrealist writer Roger Caillois’s notion of 'diagonal sciences'—unusual cross-sections of the world that reveal what he called 'neglected correlations,' and 'tissues of thought.'", location: new_museum)

Event.create(start_date: DateTime.new(2019,1,22), end_date:DateTime.new(2019,4,14), title: "ADELITA HUSNI-BEY: CHIRON", description: "In her practice, Husni-Bey makes use of noncompetitive pedagogical models to organize workshops and produce publications, radio broadcasts, and archives that form the basis of her exhibitions and films. For 'Chiron,' she has created a new site-specific installation that incorporates several of her most significant films to date, including the premiere of a major new work. In Chiron (2019), Husni-Bey collaborates with lawyers working for UnLocal, an organization dedicated to providing pro-bono legal representation to undocumented immigrants and their families facing deportation in New York. The work takes its title from the Greek mythological figure Chiron, evoking the notion of the wounded healer, and touches on urgent themes such as migration and displacement. Addressing trauma in the US as a consequence of the country’s foreign policy actions, Chiron continues Husni-Bey’s ongoing explorations of the complexity of collectivity and the human and social consequences of imperialist ventures.", location_id: 1)

Event.create(start_date: DateTime.new(2019,1,22), end_date:DateTime.new(2019,4,14), title: "GENESIS BELANGER: HOLDING PATTERN", description: "Seemingly mundane items— from cigarette stubs to soda cans, handbags and stray pills—are rendered strange as they become surrogates for the body, evoking both comfort and disquiet. Belanger conjures associations rich in references from Pop Art to the Surrealist object to seventeenth-century Dutch vanitas paintings, yet her work’s psychic impact remains acutely attuned to archetypes of the present. Belanger’s elegantly smooth and supple forms often contrast with their darkly humorous insinuations relating to pertinent subjects such as mass production, chemical dependency, and the absurdity of patriarchy.", location_id: 1)

Event.create(start_date: DateTime.new(2019,1,22), end_date:DateTime.new(2019,5,26), title: "THE ART HAPPENS HERE: NET ART’S ARCHIVAL POETICS", description: "Seemingly mundane items— from cigarette stubs to soda cans, handbags and stray pills—are rendered strange as they become surrogates for the body, evoking both comfort and disquiet. Belanger conjures associations rich in references from Pop Art to the Surrealist object to seventeenth-century Dutch vanitas paintings, yet her work’s psychic impact remains acutely attuned to archetypes of the present. Belanger’s elegantly smooth and supple forms often contrast with their darkly humorous insinuations relating to pertinent subjects such as mass production, chemical dependency, and the absurdity of patriarchy.", location_id: 1)

Event.create(start_date: DateTime.new(2019,2,3), end_date:DateTime.new(2019,5,26), title: "SCREENS SERIES: VIRGINIA LEE MONTGOMERY", description: "In her meticulously constructed videos, VLM conjures a surreal and idiosyncratic visual vocabulary, frequently populated by oozing cheese Danishes, animate ponytails, and manicured hands. Her practice bears the influence of her work as a graphic facilitator, a job for which she travels the country to diagram the development of ideas at group meetings and conferences, often for corporate clients. In her work as an artist, VLM turns this skill, which she describes as 'mind map scribing,' inwards, rendering the contours of her own subconscious and the logic of her dreams and memories.", location_id: 1)

Event.create(start_date: DateTime.new(2018,9,26), end_date:DateTime.new(2019,5,26), title: "MOTHA AND CHRIS E. VARGAS: CONSCIOUSNESS RAZING", description: "With wry humor and incisive critique, Chris E. Vargas parodies mainstream social and institutional codes to reimagine how queer and trans experiences are represented. Vargas is the founder of the Museum of Transgender Hirstory & Art (MOTHA), a semi-fictional, transient institution that serves as a platform for exhibiting trans history and cultural production. His project takes up the contested legacy of the word history: Vargas notes that “for millennia, the patriarchy has had versions of history; for a few years in the 1970s, some white feminists had herstory; but it hasn’t been until now that transgender people have finally had a gender-neutral hirstory all their own.", location_id: 1)

Event.create(start_date: DateTime.new(2018,9,26), end_date:DateTime.new(2019,1,20), title: "SARAH LUCAS: AU NATUREL", description: "Over the past thirty years, Lucas has created a distinctive and provocative body of work that subverts traditional notions of gender, sexuality, and identity. Since the late 1980s, she has transformed found objects and everyday materials such as cigarettes, vegetables, and stockings into disorienting, confrontational tableaux that boldly challenge social norms. The human body and anthropomorphic forms recur throughout Lucas’s works, often appearing erotic, humorous, fragmented, or reconfigured into fantastical anatomies of desire.", location_id: 1)



Event.create(start_date: DateTime.new(2018,3,12), end_date:DateTime.new(2019,8,18), title: "Unseen Oceans", description: "With the use of 21st-century technologies like robotics, satellite monitoring, and more, scientists are revealing the unseen habitats of the oceans’ most mysterious animals and mapping remote, inhospitable areas in unprecedented detail.", location_id: 2)

Event.create(start_date: DateTime.new(2018,10,6), end_date:DateTime.new(2019,5,27), title: "The Butterfly Conservatory", description: "The popular annual seasonal exhibition is back with more than 500 free-flying butterflies amid lush tropical plants!

Butterflies and moths make up a large group of insects known as the Order Lepidoptera (lep-i-DOP-ter-ah). The name—from the Greek lepido, 'scale,' and ptera, 'wings'—refers to a prominent feature of adult butterflies and moths, the tiny scales that cover the wings and the rest of the body.", location_id: 2)

Event.create(start_date: DateTime.new(2018,10,6), end_date:DateTime.new(2019,5,27), title: "Backyard Wilderness", description: "The wonders of nature are closer than you think! In Backyard Wilderness, follow a young girl who discovers the intricate secrets that nature has hidden close to her front door.", location_id: 2)

Event.create(start_date: DateTime.new(2008,5,17), end_date:DateTime.new(2009,4,27), title: "Horse", description: "The sound is unmistakable: the thundering hooves of a running horse. Horses have been racing across the landscape for more than 50 million years—much longer than our own species has existed. But once horses and humans encountered each other, our two species became powerfully linked.

Humans domesticated horses some 6,000 years ago, and over time, we have created more than 200 breeds, from the powerful Clydesdale to the graceful Arabian. As we have shaped horses to suit our needs on battlefields, farms, and elsewhere, these animals have shaped human history. They have also captured our imagination and hearts. Millions of people rely on horses as their spirited, dedicated, much adored companions.", location_id: 2)

Event.create(start_date: DateTime.new(2011,11,9), end_date:DateTime.new(2012,8,12), title: "Beyond Planet Earth: The Future of Space Exploration", description: "The Moon. Mars. An icy moon of Jupiter. A near-Earth asteroid. In the not too distant future, missions to these destinations will launch from Earth.

All would involve countless hours of planning and hard work, opportunity for scientific glory—and risk. But if the missions succeed, what adventures would unfold. So, tonight, look up. Above you: the universe.", location_id: 2)


Event.create(start_date: DateTime.new(2019,1,23), end_date:DateTime.new(2019,4,14), title: "Lucio Fontana: On the Threshold", description: "The first major survey of Lucio Fontana (1899–1968) in the United States in more than forty years, this exhibition reexamines the career of one of the most innovative artists of the twentieth century. The Argentine-Italian artist is widely known for his Cuts series, slashed paintings that became symbols of the postwar era. The exhibition presents extraordinary examples of this iconic body of work. It also explores Fontana's beginnings as a sculptor, including his exquisite work in ceramic, as well as his pioneering environments, contextualizing the radical gesture of his Cuts as part of the artist's broader search to integrate the space of art and the space of the viewer.", location_id: 3)

Event.create(start_date: DateTime.new(2018,1,30), end_date:DateTime.new(2019,5,12), title: "Monumental Journey: The Daguerrotypes of Girault de Prangey", description: "In 1842, artist, architectural historian, archaeologist, and pioneer photographer Joseph-Philibert Girault de Prangey (1804–1892) embarked on a three-year photographic excursion throughout the Eastern Mediterranean, and he returned to France with more than one thousand daguerreotypes—an unparalleled feat in the history of photography. Among the images he created are the earliest surviving photographs of Greece, Egypt, Turkey, Lebanon, Syria, and Jerusalem and among the first daguerreotypes depicting Italy.

A trailblazer of the daguerreotype process, Girault used oversize plates and innovative formats to produce what is today the world's oldest photographic archive—all in the service of a brand-new type of archaeological fieldwork. This exhibition, the first in the United States devoted to Girault, and the first to focus on his Mediterranean journey, features approximately 120 of his daguerreotypes, supplemented by examples of his graphic work—watercolors, paintings, and his lithographically illustrated publications.", location_id: 3)

Event.create(start_date: DateTime.new(2018,10,16), end_date:DateTime.new(2020,10,4), title: "In Praise of Painting: Dutch Masterpieces at the Met", description: "Dutch paintings of the seventeenth century—the Golden Age of Rembrandt, Hals, and Vermeer—have been a highlight of The Met collection since the Museum's founding purchase in 1871. This exhibition brings together some of the Museum's greatest paintings to present this remarkable chapter of art history in a new light. Through sixty-seven works of art organized thematically, In Praise of Painting orients visitors to key issues in seventeenth-century Dutch culture—from debates about religion and conspicuous consumption to painters' fascination with the domestic lives of women.", location_id: 3)

Event.create(start_date: DateTime.new(2018,12,3), end_date:DateTime.new(2019,5,13), title: "Artistic Encounters with Indigenous America", description: "Indigenous America has long occupied a unique place in the imagination of non-Native artists. From the moment European explorers arrived in the so-called New World in the fifteenth century, (mis)representations of Native North Americans proliferated in the fine, decorative, and commercial arts. In order to personify peoples they knew little about, European artists invented a visual vocabulary to depict America, creating long-lasting stereotypes such as the 'Indian princess' and the 'noble savage.' Artists working in the United States in the late eighteenth and early nineteenth centuries inherited these conventions and adapted them to create romanticized images of Native peoples existing apart from the modern world.", location_id: 3)

Event.create(start_date: DateTime.new(2019,3,18), end_date:DateTime.new(2019,6,23), title: "The World Between Empires: Art and Identity in the Ancient Middle East", description: "For over three centuries, the territories and trading networks of the Middle East were contested between the Roman and Parthian Empires (ca. 100 B.C.–A.D. 250), yet across the region life was not defined by these two superpowers alone. Local cultural and religious traditions flourished, and sculptures, wall paintings, jewelry, and other objects reveal how ancient identities were expressed through art. Featuring 190 works from museums in the Middle East, Europe, and the United States, this exhibition will follow a journey along the great incense and silk routes that connected cities in southwestern Arabia, Nabataea, Judaea, Syria, and Mesopotamia, making the region a center of global trade. Several of the archaeological sites featured, including Palmyra, Dura-Europos, and Hatra, have been damaged in recent years by deliberate destruction and looting, and the exhibition will also examine these events and responses to them.", location_id: 3)

Event.create(start_date: DateTime.new(2019,5,9), end_date:DateTime.new(2019,9,8), title: "Camp: Notes on Fashion", description: "The Costume Institute's spring 2019 exhibition will explore the origins of the camp aesthetic, and how it has evolved from a place of marginality to become an important influence on mainstream culture. Susan Sontag's 1964 essay Notes on 'Camp' provides the framework for the exhibition, which will examine how fashion designers have used their métier as a vehicle to engage with camp in a myriad of compelling, humorous, and sometimes incongruous ways.", location_id: 3)


Event.create(start_date: DateTime.new(2018,10,12), end_date:DateTime.new(2019,4,23), title: "Hilma af Klint: Paintings for the Future", description: "When Hilma af Klint began creating radically abstract paintings in 1906, they were like little that had been seen before: bold, colorful, and untethered from any recognizable references to the physical world. It was years before Vasily Kandinsky, Kazimir Malevich, Piet Mondrian, and others would take similar strides to rid their own artwork of representational content. Yet while many of her better-known contemporaries published manifestos and exhibited widely, af Klint kept her groundbreaking paintings largely private. She rarely exhibited them and, convinced the world was not yet ready to understand her work, stipulated that it not be shown for twenty years following her death. Ultimately, her work was all but unseen until 1986, and only over the subsequent three decades have her paintings and works on paper begun to receive serious attention.", location_id: 4)

Event.create(start_date: DateTime.new(2019,1,25), end_date:DateTime.new(2020,1,5), title: "Implicit Tensions: Mapplethorpe Now", description: "In the thirty years since his death, Robert Mapplethorpe (1946–1989) has become a cultural icon. One of the most critically acclaimed and controversial American artists of the late twentieth century, Mapplethorpe is widely known for daring imagery that deliberately transgresses social mores, and for the censorship debates that transpired around his work in the United States during the late 1980s and early 1990s. Yet the driving force behind his artistic ethos was an obsession with perfection that he bought to bear on his approach to each of his subjects.", location_id: 4)

Event.create(start_date: DateTime.new(2018,11,12), end_date:DateTime.new(2019,3,31), title: "Andy Warhol— From A to B and Back Again", description: "Few American artists are as ever-present and instantly recognizable as Andy Warhol (1928–1987). Through his carefully cultivated persona and willingness to experiment with non-traditional art-making techniques, Warhol understood the growing power of images in contemporary life and helped to expand the role of the artist in society. This exhibition—the first Warhol retrospective organized by a U.S. institution since 1989—reconsiders the work of one of the most inventive, influential, and important American artists. Building on a wealth of new materials, research and scholarship that has emerged since the artist’s untimely death in 1987, this exhibition reveals new complexities about the Warhol we think we know, and introduces a Warhol for the 21st century.", location_id: 5)

Event.create(start_date: DateTime.new(2018,9,28), end_date:DateTime.new(2019,4,14), title: "Programmed: Rules, Codes, and Choreographies in Art, 1965–2018", description: "Programmed: Rules, Codes, and Choreographies in Art, 1965–2018 establishes connections between works of art based on instructions, spanning over fifty years of conceptual, video, and computational art. The pieces in the exhibition are all “programmed” using instructions, sets of rules, and code, but they also address the use of programming in their creation. The exhibition links two strands of artistic exploration: the first examines the program as instructions, rules, and algorithms with a focus on conceptual art practices and their emphasis on ideas as the driving force behind the art; the second strand engages with the use of instructions and algorithms to manipulate the TV program, its apparatus, and signals or image sequences. Featuring works drawn from the Whitney’s collection, Programmed looks back at predecessors of computational art and shows how the ideas addressed in those earlier works have evolved in contemporary artistic practices. At a time when our world is increasingly driven by automated systems, Programmed traces how rules and instructions in art have both responded to and been shaped by technologies, resulting in profound changes to our image culture.", location_id: 5)

Event.create(start_date: DateTime.new(2018,12,15), end_date:DateTime.new(2019,3,10), title: "Kevin Beasley: A view of a landscape", description: "Kevin Beasley (b. 1985, Lynchburg, VA) engages with the legacy of the American South through a new installation that centers on a cotton gin motor from Maplesville, Alabama. In operation from 1940 to 1973, the motor powered the gins that separated cotton seeds from fiber. Here, the New York-based artist uses it to generate sound as if it were a musical instrument, creating space for visual and aural contemplation. Through the use of customized microphones, soundproofing, and audio hardware, the installation divorces the physical motor from the noises it produces, enabling visitors to experience sight and sound as distinct. As an immersive experience, the work serves as a meditation on history, land, race, and labor. This is Beasley’s first solo exhibition at a New York museum, and his most ambitious work to date.", location_id: 5)

Event.create(start_date: DateTime.new(2019,2,8), end_date:DateTime.new(2019,5,12), title: "Frida Kahlo: Appearances Can Be Deceiving", description: "Mexican artist Frida Kahlo’s unique and immediately recognizable style was an integral part of her identity. Kahlo came to define herself through her ethnicity, disability, and politics, all of which were at the heart of her work. Frida Kahlo: Appearances Can Be Deceiving is the largest U.S. exhibition in ten years devoted to the iconic painter and the first in the United States to display a collection of her clothing and other personal possessions, which were rediscovered and inventoried in 2004 after being locked away since Kahlo’s death, in 1954. They are displayed alongside important paintings, drawings, and photographs from the celebrated Jacques and Natasha Gelman Collection of 20th Century Mexican Art, as well as related historical film and ephemera. To highlight the collecting interests of Kahlo and her husband, muralist Diego Rivera, works from our extensive holdings of Mesoamerican art are also included.", location_id: 6)

Event.create(start_date: DateTime.new(2019,2,8), end_date:DateTime.new(2019,8,18), title: "One: Egúngún", description: "One: Egúngún tells the life story of a twentieth-century Yorùbá masquerade dance costume (egúngún), from its origins in Ògbómọ̀ṣọ́, Nigeria, to its current home in Brooklyn. Composed of over three hundred textiles from Africa, Europe, and Asia, this egúngún swirls into motion during festivals honoring departed ancestors. Centuries old, egúngún is still practiced in Nigeria, the Republic of Benin, and in the Yorùbá diaspora.", location_id: 6)

Event.create(start_date: DateTime.new(2019,2,8), end_date:DateTime.new(2019,8,18), title: "Eric N. Mack: Lemme walk across the room", description: "Lemme walk across the room, the first New York City solo exhibition by the emerging artist Eric N. Mack, transforms the Museum’s Great Hall with a site-responsive installation of new and existing textile-based works hung, mounted, and draped in conversation with the classical architecture of the space. Mack’s work explodes the boundaries of painting, sculpture, and fashion, dynamically reflecting and framing the rich visual experiences of the everyday.", location_id: 6)

Event.create(start_date: DateTime.new(2018,8,23), end_date:DateTime.new(2019,3,31), title: "Half the Picture: A Feminist Look at the Collection", description: "Featuring more than 100 works from our collection, Half the Picture: A Feminist Look at the Collection explores a wide range of art-making, focusing on enduring political subjects—encompassing gender, race, and class—that remain relevant today. The exhibition’s intersectional feminist framework highlights artworks, in a plurality of voices, that aim to rally support or motivate action on behalf of a cause, or to combat stereotypes and dominant narratives. (This exhibition contains sexually explicit content. Viewer discretion is advised.", location_id: 6)

Event.create(start_date: DateTime.new(2018,10,12), end_date:DateTime.new(2019,5,5), title: "One: Do Ho Suh", description: "At a time of mass global migration, the loss of leaving one's native country and searching for a permanent home have become universal issues. One: Do Ho Suh features a single, large-scale work by Korean-born artist Do Ho Suh, whose work engages with migration and cultural displacement. The Perfect Home II is a full-scale re-creation of the artist’s former apartment in the Chelsea neighborhood of New York City and his home for 19 years. Visitors are invited to walk through the hand-sewn, translucent fabric replica, which includes details such as light fixtures, radiators, and even an intercom.", location_id: 6)

Event.create(start_date: DateTime.new(2018,11,2), end_date:DateTime.new(2019,3,3), title: "Martha Rosler: Irrespective", description: "Martha Rosler is considered one of the strongest and most resolute artistic voices of her generation. She skillfully employs diverse materials to address pressing matters of her time, including war, gender roles, gentrification, inequality, and labor. From her feminist photomontages of the 1960s and 1970s to her large-scale installations, Rosler’s vital work reflects an enduring and passionate vision.

Martha Rosler: Irrespective showcases both well-known and rarely seen selections from more than five decades of work. Installations, photographic series, sculpture, and video represent a practice continually evolving and reacting to the shifting contours of political life. Throughout, Rosler’s work has been characterized by intellectual rigor and sharp wit, along with a sense of urgency directed at social and political issues that remain as relevant and immediate as when they first emerged.", location_id: 6)

Event.create(start_date: DateTime.new(2019,4,12), end_date:DateTime.new(2019,9,8), title: "Leonard Cohen: A Crack in Everything", description: "Martha Rosler is considered one of the strongest and most resolute artistic voices of her generation. She skillfully employs diverse materials to address pressing matters of her time, including war, gender roles, gentrification, inequality, and labor. From her feminist photomontages of the 1960s and 1970s to her large-scale installations, Rosler’s vital work reflects an enduring and passionate vision.

Martha Rosler: Irrespective showcases both well-known and rarely seen selections from more than five decades of work. Installations, photographic series, sculpture, and video represent a practice continually evolving and reacting to the shifting contours of political life. Throughout, Rosler’s work has been characterized by intellectual rigor and sharp wit, along with a sense of urgency directed at social and political issues that remain as relevant and immediate as when they first emerged.", location_id: 6)

Event.create(start_date: DateTime.new(2018,11,12), end_date:DateTime.new(2019,2,25), title: "Bruce Nauman: Disappearing Acts", description: "Bruce Nauman has spent half a century inventing forms to convey both the moral hazards and the thrill of being alive. Employing a tremendous range of materials and working methods, he reveals how mutable experiences of time, space, movement, and language provide an unstable foundation for understanding our place in the world. For Nauman, both making and looking at art involve “doing things that you don’t particularly want to do, putting yourself in unfamiliar situations, following resistances to find out why you’re resisting.” At a time when the notion of truth feels increasingly under attack, his work compels viewers to relinquish the safety of the familiar, keeping us alert, ever vigilant, and wary of being seduced by easy answers.", location_id: 7)

Event.create(start_date: DateTime.new(2017,4,9), end_date:DateTime.new(2017,9,24), title: "Ian Cheng: Emissaries", description: "Bruce Nauman has spent half a century inventing forms to convey both the moral hazards and the thrill of being alive. Employing a tremendous range of materials and working methods, he reveals how mutable experiences of time, space, movement, and language provide an unstable foundation for understanding our place in the world. For Nauman, both making and looking at art involve “doing things that you don’t particularly want to do, putting yourself in unfamiliar situations, following resistances to find out why you’re resisting.” At a time when the notion of truth feels increasingly under attack, his work compels viewers to relinquish the safety of the familiar, keeping us alert, ever vigilant, and wary of being seduced by easy answers.", location_id: 7)

Event.create(start_date: DateTime.new(2019,2,16,10), end_date:DateTime.new(2019,2,16,11,30), title: "Birding: Winter Birds", description: "Sick of being cooped up indoors? Set out with the Urban Park Rangers on one of the many hikes and birding tours they offer.

Whether you're an experienced birder or just looking for a fun winter activity outdoors, birding is a great way to enjoy the outdoors and stay active. Winter is a great time to spot waterfowl, bald eagles, peregrine falcons, red-tailed hawks, snowy owls, and many more bird species.", location_id: 10)

Event.create(start_date: DateTime.new(2019,2,17,13), end_date:DateTime.new(2019,2,17,14), title: "City Parks Foundation Presents Yeti, Set, Snow! at the Swedish Cottage Marionette Theatre", description: "City Parks Foundation presents an original production and story, Yeti, Set Snow!, at the Swedish Cottage Marionette Theatre in Central Park, November 13, 2018 - February 24, 2019. Yeti, Set, Snow! tells the story of a young girl named Widget, and her friend, Twig, who encounter a yeti named Pascetti on the first snow day of the winter season. Pascetti, who lives on a mountain top nearby, dislikes the snow. Through songs and snow day activities, Pascetti discovers not only that snow can be fun but also learns the value of friendship.", location_id: 10)


15.times do
  EventUser.create(user: User.all.sample, event: Event.all.sample)
end

puts "end seed"
