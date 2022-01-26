*** Variables ***

#searchQuery
${item1}                            CAICA00696

${ProductList_Table}                //*[@id="product-list"]
${ProductList_FilterToggle}         //*[@id="filter-toggle-section"]/div/button/div/i
${ProductList_FilterSideBar}        //*[@id="filters"]


${Category}                         //a[contains(text(),'Laptops & Tablets')]
${Selected_Category}                Laptops & Tablets
${Selected_Subcategory}             Gaming Laptops

# ${ProductList_AddToCart_FirstResult}    //*[@id="product-list"]/div[2]/div/div/div[2]/div/div/div[2]/a/button