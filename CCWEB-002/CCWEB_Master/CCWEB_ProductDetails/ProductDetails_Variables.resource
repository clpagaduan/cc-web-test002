*** Variables ***

#searchQuery
${item1}                                CAICA00696
${item2}                                CAICA00697
# ${topSearchResult}                  //*[@id="product-list"]/div[2]/div/div/div[1]/div/div[1]
${CCWEB_ProductDetails_ItemCode}        //div[@class="d-block order-1 order-sm-2 bg-cc pt-0"]
${ProductDetails_AddToCart}             //*[@id="btn-addCart"]
# ${ViewCart}                         //*[@id="btn-cart"]
${ProductDetails_AddQty}                //*[@id="pi-form"]/div[1]/div[1]/div/p/a[2]
${ProductDetails_SubtractQty}           //*[@id="pi-form"]/div[1]/div[1]/div/p/a[1]
${ProductDetails_Quantity}              //*[@id="pi-cart-quantity"]

${ProductDetails_Tab_Overview}          //*[@id="nav-tab"]/a[1]
${ProductDetails_Tab_Specs}             //*[@id="nav-tab"]/a[2]
${ProductDetails_Tab_Warranty}          //*[@id="nav-tab"]/a[3]
${ProductDetails_Tab_Review}            //*[@id="nav-tab"]/div

${ProductDetails_Body_Overview}         //*[@id="nav-home"]
${ProductDetails_Body_Specs}            //*[@id="nav-profile"]
${ProductDetails_Body_Warranty}         //*[@id="nav-contact"]

${ProductDetails_Price}                 //*[contains(text(), "$")]