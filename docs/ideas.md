# Current feature ideas

*Not an exhaustive or coherent list at the moment - more generally a notepad for future plans*

- Sets of template layouts for generated pages
  - "Basic" layouts (standard web layouts) as well as more complex layouts
  - Template layouts use HTML properties to declare which types of elements can be randomized (for example, an element that could have its size randomized might have the `yttrium-allow-random-size` attribute so the generator knows what to do with it)
- A more permanent space for 88x31 banners, likely in a footer bar at the bottom of a page
- Modular sets of components that can be enabled and disabled in the generator configuration at will
  - Components might include things like image components, gif components, text components, etc.
  - General components might have subcomponents - for example, text components could have subcomponents like a "quote generator" component
  - Template layouts would have specific slots for general components, but may specify a specific subcomponent based on the location in a page or the way the template is set up
- Programmatically ensuring the consistency of color elements across the page
  - Using OpenCV to compare chi-squared distance of color histograms between images on the page to ensure they don't stray out of some predefined (configured) boundary
  - Precalculation of color histogram distance for sets of images by defining a subset of all assets as "primary assets", which have their color histogram distances precomputed for all other images in the set
- Allowing for text components to make use of custom fonts, dropped into a specific folder and exposed as web fonts for the generated page
- Extensive configuration files (likely in TOML or YAML formats) to allow for higher level tweaking of the generator as well as lower level changes 
- Command line utility to handle various administration tasks as well as deployment (to replace existing .sh/.bat files)
  - Handling setup and local deployment of tool (development and production environments)
  - Handling addition of new packages into the virtual environment (currently done via `install_pkg.sh/.bat`)
  - Running precomputation steps for color histograms on "primary assets"
  - Viewing statistics on the current "database" (the collection of all assets, including image, gif, sound, text, etc.)
  - Basic tools to scrape assets from preexisting sites, to directly add them to the database
