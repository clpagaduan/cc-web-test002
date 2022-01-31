*** Variables ***
#NOTE: WHEN WRITING CODES, CHANGE BROWSER TO CHROME
#NOTE: WHEN PUSHING GLOBAL VARIABLES TO GIT, CHANGE BROWSER TO HEADLESSCHROME BEFORE COMMITTING

#setup
${url}                                         https://www.canadacomputers.com/
# ${url}                                         https://dev5.canadacomputers.com/
${browser}                                     chrome



#VILMA
# ${login_email}    vilma.t.nato@gmail.com
# ${login_pw}           Web1234
# ${login_username}     Vilma Nato

# PROD
${login_email}                                cc.automation.001@gmail.com
${login_pw}                                   CCWEB123!
${login_username}                             cc.automation.001
${login_memberid}                             01291622

# #DEV5
# ${login_email}                                cc.dev5.automation.001@gmail.com
# ${login_pw}                                   cc.dev5.automation.001
# ${login_username}                             cc.dev5.automation.001



${item1}                                      CAICA00696
${item1_name}                                 iCAN Passive DisplayPort 1.2 to HDMI 4K x 2K Adapter

${login_pw_inc}                               1234Web
${CCWEB_LoginLink}                            //*[@id="header-search"]/div/div[3]/div/div[1]/a
${CCWEB_LoginEmail}                           //*[@id="lo-username"]
${CCWEB_LoginPassword}                        //*[@id="lo-password"]
${CCWEB_LoginBtn}                             //*[@id="btn-login"]
${CCWEB_LoginUserBtn}                         //*[@id="userLogin"]/div/div[7]/a
${CCWEB_LoginProfile}                         //*[@id="profile"]/div[1]/div[1]/div/div[2]/div[2]
${CCWEB_LoginViaUsername}                     //*[@id="check-out"]/div[2]/div[1]/div[2]/button
${CCWEB_LoginErrorMessage}                    No match for User Name or Password

#Search
${CCWEB_SearchBar}                            //*[@id="cc_quick_search"]
${CCWEB_SearchBarButton}                      //*[@id="hd_searchform"]/div/div[2]/button
${CCWEB_ProductList}                          //*[@id="product-list"]
${CCWEB_ViewCart}                             //*[@id="btn-cart"]
${CCWEB_ContinueShopping}                     //*[@id="btn-continue-shopping"]
${topSearchResult}                            //*[@id="product-list"]/div[2]/div/div/div[1]/div/div[1]
# ${topSearchResult}                  //*[@id="product-list"]/div[2]/div/div/div[1]/div/div[1]/a
# ${topSearchResult}                  //*[@id="product-list"]/div[2]/div/div/div[1]/div/div[1]/a/div/div/img

#Product List
${ProductList_AddToCart_FirstResult}          //*[@id="product-list"]/div[2]/div/div/div[2]/div/div/div[2]/a/button

#Product Details
${ProductDetails_AddToWishlist}               //*[@id="pi-form"]/div[1]/div[3]/a



${CCWEB_AcceptCookies}                        //*[@id="privacy-btn"]

#Nav
${Nav_ShopProducts}                           //*[@id="header-shop"]/div/div/div[3]/div[1]/div[1]/a
${Nav_Cart}                                   //*[@id="header-search"]/div/div[3]/div/div[4]
${Nav_YourAccount}                            //*[@id="header-search"]/div/div[3]/div/div[1]/div/a[1]/div
${Nav_YourAccount_MyAccount}                  //*[@id="header-search"]/div/div[3]/div/div[1]/div/div/ul/li[1]/a
# //*[@id="header-shop"]/div/div/div[3]/div[3]/a

#Breadcrumbs
${CCWEB_B_MyAccount}                          //a[contains(text(),'Your Account')]

#My Account Page
${MyAccount_OrderHistory}    //*[@id="profile"]/div[3]/div[1]/div/div[2]/a/span
${MyAccount_Wishlist}        //*[@id="profile"]/div[3]/div[2]/div/div[2]/a/span
${MyAccount_YourTickets}     //*[@id="profile"]/div[3]/div[3]/div/div[2]/a/span
${MyAccount_Unsubscribe}     //*[@id="profile"]/div[3]/div[4]/div/div[2]/a/span
${MyAccount_AddressBook}     //*[@id="profile"]/div[3]/div[5]/div/div[2]/a/span
${MyAccount_AccountInfo}     //*[@id="profile"]/div[3]/div[6]/div/div[2]/a/span
${MyAccount_ResetPassword}   //*[@id="profile"]/div[3]/div[7]/div/div[2]/a/span
