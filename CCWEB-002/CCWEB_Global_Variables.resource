*** Variables ***
#NOTE: WHEN WRITING CODES, CHANGE BROWSER TO CHROME
#NOTE: WHEN PUSHING GLOBAL VARIABLES TO GIT, CHANGE BROWSER TO HEADLESSCHROME BEFORE COMMITTING

#setup
${url}                 https://www.canadacomputers.com/
${browser}             chrome

#credentials
${user}                Test.Store.user01
${userpw}              StoreUser01

#Login
# ${login_email}    vilma.t.nato@gmail.com
# ${login_pw}           Web1234
# ${login_username}     Vilma Nato

${login_email}    cc.automation.001@gmail.com
${login_pw}           CCWEB123!
${login_username}     cc.automation.001

${login_pw_inc}       1234Web
${CCWEB_LoginLink}        //*[@id="header-search"]/div/div[3]/div/div[1]/a
${CCWEB_LoginEmail}       //*[@id="lo-username"]
${CCWEB_LoginPassword}    //*[@id="lo-password"]
${CCWEB_LoginBtn}         //*[@id="btn-login"]
${CCWEB_LoginUserBtn}     //*[@id="userLogin"]/div/div[7]/a
${CCWEB_LoginProfile}     //*[@id="profile"]/div[1]/div[1]/div/div[2]/div[2]
${CCWEB_LoginViaUsername}    //*[@id="check-out"]/div[2]/div[1]/div[2]/button
${CCWEB_LoginErrorMessage}    No match for User Name or Password

#Search
${CCWEB_SearchBar}        //*[@id="cc_quick_search"]
${CCWEB_SearchBarButton}  //*[@id="hd_searchform"]/div/div[2]/button
${CCWEB_ProductList}      //*[@id="product-list"]
${CCWEB_ViewCart}         //*[@id="btn-cart"]
${CCWEB_ContinueShopping}    //*[@id="btn-continue-shopping"]
${topSearchResult}                  //*[@id="product-list"]/div[2]/div/div/div[1]/div/div[1]
# ${topSearchResult}                  //*[@id="product-list"]/div[2]/div/div/div[1]/div/div[1]/a
# ${topSearchResult}                  //*[@id="product-list"]/div[2]/div/div/div[1]/div/div[1]/a/div/div/img

#Product List
${ProductList_AddToCart_FirstResult}    //*[@id="product-list"]/div[2]/div/div/div[2]/div/div/div[2]/a/button



${CCWEB_AcceptCookies}    //*[@id="privacy-btn"]

#Nav
${Nav_ShopProducts}    //*[@id="header-shop"]/div/div/div[3]/div[1]/div[1]/a
${Nav_Cart}            //*[@id="header-search"]/div/div[3]/div/div[4]
# //*[@id="header-shop"]/div/div/div[3]/div[3]/a