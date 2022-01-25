*** Variables ***
#setup
${url}                 https://www.canadacomputers.com/
${browser}             Chrome

#credentials
${user}                Test.Store.user01
${userpw}              StoreUser01

#Search
${CCWEB_SearchBar}        //*[@id="cc_quick_search"]
${CCWEB_SearchBarButton}  //*[@id="hd_searchform"]/div/div[2]/button
${CCWEB_ProductList}      //*[@id="product-list"]
${CCWEB_ViewCart}         //*[@id="btn-cart"]
# ${topSearchResult}                  //*[@id="product-list"]/div[2]/div/div/div[1]/div/div[1]
# ${topSearchResult}                  //*[@id="product-list"]/div[2]/div/div/div[1]/div/div[1]/a
${topSearchResult}                  //*[@id="product-list"]/div[2]/div/div/div[1]/div/div[1]/a/div/div/img

${CCWEB_LoginLink}        //*[@id="header-search"]/div/div[3]/div/div[1]/a
${CCWEB_LoginEmail}       //*[@id="lo-username"]
${CCWEB_LoginPassword}    //*[@id="lo-password"]
${CCWEB_LoginBtn}         //*[@id="btn-login"]
${CCWEB_LoginUserBtn}     //*[@id="userLogin"]/div/div[7]/a
${CCWEB_LoginProfile}     //*[@id="profile"]/div[1]/div[1]/div/div[2]/div[2]
${CCWEB_LoginViaUsername}    //*[@id="check-out"]/div[2]/div[1]/div[2]/button
${CCWEB_LoginErrorMessage}    No match for User Name or Password

#Nav
${Nav_ShopProducts}    //*[@id="header-shop"]/div/div/div[3]/div[1]/div[1]/a
# //*[@id="header-shop"]/div/div/div[3]/div[3]/a