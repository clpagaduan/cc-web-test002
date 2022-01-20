*** Variables ***
#setup
${url}                 https://www.canadacomputers.com/
${browser}             Chrome

#credentials
${user}                Test.Store.user01
${userpw}              StoreUser01

#Search
${CC_SearchBar}        //*[@id="cc_quick_search"]
${CC_SearchBarButton}  //*[@id="hd_searchform"]/div/div[2]/button
${CC_ProductList}      //*[@id="product-list"]

#Login
${ERP_Username}        //*[@id="txtUsername"]
${ERP_Password}        //*[@id="txtPassword"]
${ERP_LoginBtn}        //*[@id="btnLogin"]
${ERP_LeftMenu}        //*[@id="leftMenu"]

#Top Menu
${ERP_Employee}        //*[@id="leftMenu"]/li[1]
${ERP_ProductManage}   //*[@id="leftMenu"]/li[2]


#functions
${ERP_SystFunc}         //*[@id="menu100500"]
${ERP_MsgCenter}        //*[@id="menu100700"]
${ERP_ItemPrice}        //*[@id="menu200500"]
${ERP_PriceTagStatus}   //*[@id="menu202400"]

#Verify
${nav_hint}             //*[@id="nav_hint"]
${SystFunc}             /Employee/SystemFunction
${MessageCenter}        /Message/Center
${ItemPrice}            /Item/ItemPrice
${PriceTagStatus}       /ItemPlace/Index