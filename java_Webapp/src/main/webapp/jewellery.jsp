<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KKC | Keshavlal Kalidas Jewellers - Fine Gold & Diamond Jewelry</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        'primary-gold': '#A38959',
                        'secondary-maroon': '#8B0000',
                        'background-light': '#F8F4F0',
                    },
                    fontFamily: {
                        sans: ['Inter', 'sans-serif'],
                        serif: ['Playfair Display', 'serif'],
                    },
                }
            }
        }
    </script>
    <style>
        /* Custom styles for a luxurious look */                                                
        .card-shadow {
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06), 0 0 15px rgba(163, 137, 89, 0.3);
        }
        .hero-title {
            animation: fadeInDown 1s ease-out;
        }
        .hero-subtitle {
            animation: fadeInUp 1s ease-out 0.3s forwards;
            opacity: 0;
        }
        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .shine-button {
            position: relative;
            overflow: hidden;
            transition: all 0.3s ease;
        }
        .shine-button::after {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.3);
            transform: skewX(-20deg);
            transition: all 0.5s;
        }
        .shine-button:hover::after {
            left: 100%;
        }
        
        /* MODAL STYLES RE-ADDED */
        .modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            display: none; /* Initially hidden */
            justify-content: center;
            align-items: center;
            z-index: 999;
            opacity: 0;
            transition: opacity 0.3s ease-in-out;
        }
        .modal-content {
            background-color: #fff;
            padding: 2rem;
            border-radius: 10px;
            max-width: 90%;
            max-height: 90vh;
            overflow-y: auto;
            transform: translateY(-50px);
            transition: transform 0.3s ease-in-out;
        }
        .modal.open {
            display: flex;
            opacity: 1;
        }
        .modal.open .modal-content {
            transform: translateY(0);
        }
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
</head>
<body class="bg-background-light font-sans text-gray-800">

    <header class="bg-white shadow-lg sticky top-0 z-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 flex justify-between items-center h-20">
            <div class="flex-shrink-0">
                <a href="#" class="flex items-center space-x-2">
                    <img src="img/Screenshot 2025-09-29 120407.png" alt="M/s. Keshavlal Kalidas Chokshi Logo" class="h-16 w-auto"> 
                </a>
            </div>
            
            <nav class="hidden md:flex space-x-8">
                <a href="#featured" class="text-gray-600 hover:text-primary-gold transition duration-150 ease-in-out font-medium">Collections</a>
                <a href="#rings" class="text-gray-600 hover:text-primary-gold transition duration-150 ease-in-out font-medium">Rings</a>
                <a href="#necklaces" class="text-gray-600 hover:text-primary-gold transition duration-150 ease-in-out font-medium">Necklaces</a>
                <a href="#contact" class="text-gray-600 hover:text-primary-gold transition duration-150 ease-in-out font-medium">Contact Us</a>
            </nav>

            <div class="flex items-center space-x-4">
                <button class="text-gray-600 hover:text-primary-gold transition duration-150 ease-in-out p-2 rounded-full hover:bg-gray-100 focus:outline-none">
                    <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                    </svg>
                </button>
                <a href="tel:8238889999" class="shine-button bg-primary-gold text-white px-4 py-2 rounded-lg font-semibold text-sm hover:bg-opacity-90 transition duration-300 focus:outline-none hidden sm:block">
                    Enquire Now
                </a>
                <button class="md:hidden text-gray-600 hover:text-primary-gold focus:outline-none p-2 rounded-lg hover:bg-gray-100">
                     <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                    </svg>
                </button>
            </div>
        </div>
    </header>

    <main>
        <section class="relative bg-white pt-20 pb-16 overflow-hidden">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 grid grid-cols-1 md:grid-cols-2 gap-10 items-center">
                <div class="text-center md:text-left">
                    <h1 class="hero-title font-serif text-5xl sm:text-6xl lg:text-7xl font-extrabold text-gray-900 leading-tight">
                        Timeless Beauty. <span class="block text-primary-gold">Exquisite Craftsmanship.</span>
                    </h1>
                    <p class="hero-subtitle mt-6 text-lg sm:text-xl text-gray-600 max-w-xl mx-auto md:mx-0">
                        For generations, Keshavlal Kalidas Jewellers has been the hallmark of trust and traditional Indian artistry.
                    </p>
                    <div class="mt-10 flex justify-center md:justify-start space-x-4">
                        <button class="shine-button bg-primary-gold text-white px-8 py-3 rounded-full font-bold text-lg hover:bg-opacity-90 transform hover:scale-[1.02] transition duration-300">
                            Shop Our Collections
                        </button>
                    </div>
                </div>

                <div class="relative flex justify-center p-4">
                    <img src="Screenshot 2025-09-29 111322.jpg" 
                         alt="Exquisite Gold Kundan Necklace Set"
                         class="w-full max-w-md h-auto rounded-xl card-shadow transform rotate-1 transition duration-500 ease-in-out hover:rotate-0 hover:scale-[1.05]"
                         onerror="this.onerror=null; this.src='https://placehold.co/400x400/A38959/FFFFFF?text=KKC+Jewel'">
                </div>
            </div>
        </section>

        <section id="rings" class="py-16 sm:py-24 bg-background-light">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <h2 class="text-4xl font-serif font-bold text-center text-gray-900 mb-4">Engagement & Cocktail Rings</h2>
                <p class="text-center text-lg text-gray-600 mb-12 max-w-2xl mx-auto">Discover the perfect symbol of commitment or a statement piece for your next event. Crafted with stunning stones and brilliant diamonds.</p>

                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
                    
                    <div class="bg-white rounded-xl overflow-hidden card-shadow hover:shadow-2xl transition duration-500 group">
                        <div class="p-4 bg-gray-50">
                            <img src="img/Screenshot 2025-09-29 111202.png" 
                                 alt="Emerald Cut Yellow Stone Gold Ring" 
                                 class="w-full h-56 object-cover object-center rounded-lg transform group-hover:scale-[1.05] transition duration-500"
                                 onerror="this.onerror=null; this.src='https://placehold.co/400x300/A38959/FFFFFF?text=Ring+1'">
                        </div>
                        <div class="p-6 text-center">
                            <h3 class="text-xl font-semibold font-serif text-gray-900">The Solitaire Majesty</h3>
                            <p class="text-primary-gold font-medium mt-1">18K Gold, Citrine Quartz</p>
                            <button class="shine-button mt-4 w-full bg-secondary-maroon text-white py-2 rounded-lg text-sm font-medium hover:bg-opacity-90"
                                onclick="openModal('ring1')">
                                View Details
                            </button>
                        </div>
                    </div>

                    <div class="bg-white rounded-xl overflow-hidden card-shadow hover:shadow-2xl transition duration-500 group">
                        <div class="p-4 bg-gray-50">
                             <img src="img/Screenshot 2025-09-29 111249.png" 
                                 alt="Large Sapphire and Diamond Cluster Ring" 
                                 class="w-full h-56 object-cover object-center rounded-lg transform group-hover:scale-[1.05] transition duration-500"
                                 onerror="this.onerror=null; this.src='https://placehold.co/400x300/8B0000/FFFFFF?text=Ring+2'">
                        </div>
                        <div class="p-6 text-center">
                            <h3 class="text-xl font-semibold font-serif text-gray-900">Royal Sapphire Cluster</h3>
                            <p class="text-primary-gold font-medium mt-1">Platinum, Ceylon Sapphire, Diamonds</p>
                            <button class="shine-button mt-4 w-full bg-secondary-maroon text-white py-2 rounded-lg text-sm font-medium hover:bg-opacity-90"
                                onclick="openModal('ring2')">
                                View Details
                            </button>
                        </div>
                    </div>

                    <div class="bg-white rounded-xl overflow-hidden card-shadow hover:shadow-2xl transition duration-500 group">
                        <div class="p-4 bg-gray-50">
                             <img src="img/Screenshot 2025-09-29 111309.png" 
                                 alt="Trio of Cocktail Rings with Green, Red, and Blue Stones" 
                                 class="w-full h-56 object-cover object-center rounded-lg transform group-hover:scale-[1.05] transition duration-500"
                                 onerror="this.onerror=null; this.src='https://placehold.co/400x300/A38959/FFFFFF?text=Ring+3'">
                        </div>
                        <div class="p-6 text-center">
                            <h3 class="text-xl font-semibold font-serif text-gray-900">The Navratna Collection</h3>
                            <p class="text-primary-gold font-medium mt-1">Gold, Diamond Halos, Multiple Gems</p>
                            <button class="shine-button mt-4 w-full bg-secondary-maroon text-white py-2 rounded-lg text-sm font-medium hover:bg-opacity-90"
                                onclick="openModal('ring3')">
                                View Details
                            </button>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <section id="necklaces" class="py-16 sm:py-24 bg-white">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <h2 class="text-4xl font-serif font-bold text-center text-gray-900 mb-4">Necklaces & Pendants</h2>
                <p class="text-center text-lg text-gray-600 mb-12 max-w-2xl mx-auto">From traditional ceremonial sets to modern diamond pendants, find the piece that speaks to your soul.</p>

                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
                    
                    <div class="bg-background-light rounded-xl overflow-hidden card-shadow hover:shadow-2xl transition duration-500 group">
                        <div class="p-4">
                             <img src="img/Screenshot 2025-09-29 111231.png" 
                                 alt="Traditional Gold Mangalsutra with Ruby Stones" 
                                 class="w-full h-56 object-cover object-center rounded-lg transform group-hover:scale-[1.05] transition duration-500"
                                 onerror="this.onerror=null; this.src='https://placehold.co/400x300/A38959/FFFFFF?text=Necklace+1'">
                        </div>
                        <div class="p-6 text-center">
                            <h3 class="text-xl font-semibold font-serif text-gray-900">The Heritage Mangalsutra</h3>
                            <p class="text-primary-gold font-medium mt-1">22K Gold, Black Beads, Ruby Accents</p>
                            <button class="shine-button mt-4 w-full bg-primary-gold text-white py-2 rounded-lg text-sm font-medium hover:bg-opacity-90"
                                onclick="openModal('necklace1')">
                                Explore Sets
                            </button>
                        </div>
                    </div>

                    <div class="bg-background-light rounded-xl overflow-hidden card-shadow hover:shadow-2xl transition duration-500 group">
                        <div class="p-4">
                             <img src="img/Screenshot 2025-09-29 111322.png" 
                                 alt="Heavy Kundan Polki Necklace and Earrings Set" 
                                 class="w-full h-56 object-cover object-center rounded-lg transform group-hover:scale-[1.05] transition duration-500"
                                 onerror="this.onerror=null; this.src='https://placehold.co/400x300/8B0000/FFFFFF?text=Necklace+2'">
                        </div>
                        <div class="p-6 text-center">
                            <h3 class="text-xl font-semibold font-serif text-gray-900">The Bridal Masterpiece</h3>
                            <p class="text-primary-gold font-medium mt-1">Antique Gold Finish, Polki Diamonds</p>
                            <button class="shine-button mt-4 w-full bg-primary-gold text-white py-2 rounded-lg text-sm font-medium hover:bg-opacity-90"
                                onclick="openModal('necklace2')">
                                Explore Sets
                            </button>
                        </div>
                    </div>

                    <div class="bg-background-light rounded-xl overflow-hidden card-shadow hover:shadow-2xl transition duration-500 group">
                        <div class="p-4">
                             <img src="img/Screenshot 2025-09-29 111145.png" 
                                 alt="Modern Rose Gold Diamond Pendant and Earring Set" 
                                 class="w-full h-56 object-cover object-center rounded-lg transform group-hover:scale-[1.05] transition duration-500"
                                 onerror="this.onerror=null; this.src='https://placehold.co/400x300/A38959/FFFFFF?text=Necklace+3'">
                        </div>
                        <div class="p-6 text-center">
                            <h3 class="text-xl font-semibold font-serif text-gray-900">Aura Diamond Set</h3>
                            <p class="text-primary-gold font-medium mt-1">Rose Gold, Pave-set Diamonds</p>
                            <button class="shine-button mt-4 w-full bg-primary-gold text-white py-2 rounded-lg text-sm font-medium hover:bg-opacity-90"
                                onclick="openModal('necklace3')">
                                Explore Pendants
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="py-16 bg-secondary-maroon text-white">
            <div class="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
                <h2 class="text-4xl font-serif font-bold mb-4">The Artisan Spotlight</h2>
                <div class="flex flex-col md:flex-row items-center justify-center gap-10 mt-10">
                    <div class="md:w-1/2 p-4">
                        <img src="Screenshot 2025-09-29 111339.jpg" 
                             alt="Intricate Gold Haath Phool Hand Harness" 
                             class="w-full max-w-sm mx-auto rounded-xl card-shadow transform -rotate-2 hover:rotate-0 transition duration-500"
                             onerror="this.onerror=null; this.src='https://placehold.co/400x400/8B0000/FFFFFF?text=Haath+Phool'">
                    </div>
                    <div class="md:w-1/2 text-left p-4">
                        <h3 class="text-3xl font-serif font-bold text-primary-gold mb-3">Handcrafted Heritage Haath Phool</h3>
                        <p class="text-lg mb-6">
                            This exquisite piece is a modern interpretation of a classic Indian **Haath Phool** (Hand Harness). It features intricate lattice work and delicate gold chains, a testament to the masterful craftsmanship passed down through generations at KKC.
                        </p>
                        <ul class="list-disc list-inside text-gray-200 mb-6 space-y-1">
                            <li>Pure 22K Hallmarked Gold</li>
                            <li>Filigree & Jali Work</li>
                            <li>Perfect for bridal wear or festive occasions</li>
                        </ul>
                        <a href="tel:8238889999" class="shine-button bg-primary-gold text-secondary-maroon px-8 py-3 rounded-full font-bold text-lg hover:bg-opacity-90 transform hover:scale-105 transition duration-300">
                            Book a Private Viewing
                        </a>
                    </div>
                </div>
            </div>
        </section>


        <footer id="contact" class="bg-gray-900 text-gray-300 py-12">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
                    <div>
                        <h4 class="text-xl font-serif font-bold text-primary-gold mb-4">KKC Jewellers</h4>
                        <p class="text-sm">
                            Keshavlal Kalidas Jewellers, established in 1912, continues a legacy of purity, trust, and exquisite design. We are dedicated to crafting jewelry that celebrates life's most precious moments.
                        </p>
                    </div>

                    <div>
                        <h4 class="text-xl font-serif font-bold text-white mb-4">Quick Links</h4>
                        <ul class="space-y-2 text-sm">
                            <li><a href="#featured" class="hover:text-primary-gold transition">Collections</a></li>
                            <li><a href="#" class="hover:text-primary-gold transition">Our History</a></li>
                            <li><a href="#" class="hover:text-primary-gold transition">Certifications</a></li>
                            <li><a href="#contact" class="hover:text-primary-gold transition">Store Locations</a></li>
                        </ul>
                    </div>

                    <div>
                        <h4 class="text-xl font-serif font-bold text-white mb-4">Get In Touch</h4>
                        <ul class="space-y-2 text-sm">
                            <li>Email: info@kkcjewellers.in</li>
                            <li>Phone: <a href="tel:8238889999" class="hover:text-primary-gold transition font-bold">Hardik Chokshi - 82388 89999</a></li>
                            <li>Phone: <a href="tel:9824267683" class="hover:text-primary-gold transition font-bold">Jay Krushna Chokshi - 98242 67683</a></li>
                            <li>Address: Padra Chokshi Bazar, [Padra]</li>
                        </ul>
                    </div>

                    <div>
                        <h4 class="text-xl font-serif font-bold text-white mb-4">Stay Connected</h4>
                        <p class="text-sm mb-4">Subscribe for exclusive previews and offers.</p>
                        <form action="#" method="POST" class="flex flex-col space-y-2">
                            <input type="email" placeholder="Enter your email" required
                                   class="px-4 py-2 rounded-lg bg-gray-800 text-white border border-gray-700 focus:ring-primary-gold focus:border-primary-gold">
                            <button type="submit" class="shine-button bg-primary-gold text-gray-900 px-4 py-2 rounded-lg font-semibold text-sm hover:bg-opacity-90">
                                Subscribe
                            </button>
                        </form>
                    </div>
                </div>

                <div class="mt-12 pt-8 border-t border-gray-800 text-center">
                    <p class="text-sm text-gray-500">&copy; 2024 KKC Keshavlal Kalidas Jewellers. All Rights Reserved.</p>
                </div>
            </div>
        </footer>

    </main>
    
    <div id="productModal" class="modal" onclick="closeModal()">
        <div class="modal-content w-full max-w-lg" onclick="event.stopPropagation()">
            <div class="flex justify-between items-center border-b pb-3 mb-4">
                <h3 id="modalTitle" class="text-2xl font-serif font-bold text-gray-900">Product Title</h3>
                <button onclick="closeModal()" class="text-gray-500 hover:text-gray-900 text-3xl leading-none">&times;</button>
            </div>
            <img id="modalImage" src="" alt="Product Image" class="w-full h-auto rounded-lg mb-4 object-contain max-h-64 bg-gray-100">
            <p id="modalDescription" class="text-gray-700 mb-4"></p>
            <div id="modalDetails" class="space-y-2 text-sm text-gray-800">
                </div>
            <div class="mt-6 flex justify-end">
                 <a id="modalEnquireLink" href="tel:8238889999" class="shine-button bg-primary-gold text-white px-6 py-2 rounded-full font-bold text-sm hover:bg-opacity-90">
                    Enquire / Order Now
                </a>
            </div>
        </div>
    </div>

    <script>
        // Define product data for the modals
        const productDetails = {
            'ring1': {
                title: "The Solitaire Majesty",
                image: "Screenshot 2025-09-29 111202.jpg",
                description: "A breathtaking solitaire ring featuring a large, radiant-cut Citrine Quartz set in pure 18K gold. Its classic design emphasizes the beauty and brilliance of the gemstone.",
                details: [
                    "Metal: 18K Yellow Gold (Hallmarked)",
                    "Stone: Natural Citrine Quartz (Emerald Cut)",
                    "Weight: Approx. 5.5 grams",
                    "Availability: Available in sizes 6-10 (Custom sizing available)"
                ]
            },
            'ring2': {
                title: "Royal Sapphire Cluster",
                image: "Screenshot 2025-09-29 111249.jpg",
                description: "An aristocratic cluster ring, reminiscent of royalty. It features a deep blue Ceylon Sapphire centerpiece surrounded by a brilliant halo of natural diamonds set in Platinum.",
                details: [
                    "Metal: Platinum (PT 950)",
                    "Center Stone: Ceylon Sapphire (Oval Cut)",
                    "Accent Stones: Natural Diamonds (VVS clarity)",
                    "Certification: GIA or IGI Certified"
                ]
            },
            'ring3': {
                title: "The Navratna Collection",
                image: "Screenshot 2025-09-29 111309.jpg",
                description: "A dazzling trio of cocktail rings, showcasing three different precious gemstones (Emerald, Ruby, and Sapphire) surrounded by diamond halos and intricate gold filigree.",
                details: [
                    "Metal: 22K Yellow Gold",
                    "Stones: Natural Emerald, Ruby, and Blue Sapphire",
                    "Setting: Pave-set Diamond Halos",
                    "Style: Statement Cocktail Ring"
                ]
            },
            'necklace1': {
                title: "The Heritage Mangalsutra",
                image: "Screenshot 2025-09-29 111231.jpg",
                description: "A traditional South Indian style Mangalsutra, featuring double strands of black beads leading to a large, intricately carved gold pendant with ruby accents.",
                details: [
                    "Metal: 22K Hallmarked Gold",
                    "Stone: Ruby (Accents)",
                    "Length: Approx. 24 inches",
                    "Includes: Matching Jhumka Earrings"
                ]
            },
            'necklace2': {
                title: "The Bridal Masterpiece",
                image: "Screenshot 2025-09-29 111322.jpg",
                description: "A heavy, ceremonial Kundan Polki necklace set perfect for a bride. It features an antique matte gold finish and large uncut Polki stones with pearl and ruby drops.",
                details: [
                    "Metal: 22K Antique Gold Finish",
                    "Stones: Uncut Polki Diamonds, Ruby",
                    "Accents: Pearl and Gold Ball Drops",
                    "Includes: Grand Chandelier Earrings"
                ]
            },
            'necklace3': {
                title: "Aura Diamond Set",
                image: "Screenshot 2025-09-29 111145.jpg",
                description: "A modern, spiral-inspired diamond pendant and earring set. Crafted in rose gold, the pave-set diamonds create a vibrant, shimmering aura.",
                details: [
                    "Metal: 18K Rose Gold",
                    "Stones: Natural Diamonds (Pave Setting)",
                    "Design: Contemporary Vortex/Spiral",
                    "Style: Lightweight and Daily-Wear Appropriate"
                ]
            }
        };

        const modal = document.getElementById('productModal');
        const modalTitle = document.getElementById('modalTitle');
        const modalImage = document.getElementById('modalImage');
        const modalDescription = document.getElementById('modalDescription');
        const modalDetails = document.getElementById('modalDetails');
        
        // Function to open the modal and populate content
        function openModal(productId) {
            const product = productDetails[productId];

            if (!product) {
                console.error("Product ID not found:", productId);
                return;
            }

            // Populate Modal Content
            modalTitle.textContent = product.title;
            modalImage.src = product.image;
            modalImage.alt = product.title;
            modalDescription.textContent = product.description;
            
            // Populate Details List
            modalDetails.innerHTML = '';
            product.details.forEach(detail => {
                const li = document.createElement('li');
                li.className = 'flex items-start';
                li.innerHTML = `<svg class="w-4 h-4 mt-1 mr-2 text-primary-gold flex-shrink-0" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg><span>${detail}</span>`;
                modalDetails.appendChild(li);
            });

            // Show Modal
            modal.classList.add('open');
            document.body.style.overflow = 'hidden'; // Prevent scrolling background
        }

        // Function to close the modal
        function closeModal() {
            modal.classList.remove('open');
            document.body.style.overflow = ''; // Restore scrolling
        }

        // Close modal on escape key press
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Escape' && modal.classList.contains('open')) {
                closeModal();
            }
        });

    </script>
</body>
</html>