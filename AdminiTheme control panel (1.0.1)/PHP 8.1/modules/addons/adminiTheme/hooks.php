<?php
/*
 * AdminiTheme - WHMCS Theme Module
 * Professional WHMCS Administration Theme
 */
add_hook("ClientAreaPage", 1, function ($vars) {
    $currentTemplate = $vars["template"];
    $headerContent = "templates/" . $currentTemplate . "/includes/theme-core/header-layouts/header-default-layout.tpl";
    $footerContent = "templates/" . $currentTemplate . "/includes/theme-core/footer-layouts/footer-default-layout.tpl";
    return ["shuffythemedirection" => $headerContent, "shuffythemedirectionfooter" => $footerContent];
});
add_hook("ClientAreaPage", 1, "coodiv_adminithemeversion");
add_hook("ClientAreaPrimarySidebar", 1, function (WHMCS\View\Menu\Item $primarySidebar) {
    if (!is_null($primarySidebar->getChild("Ticket Information"))) {
        list($relatedService) = Illuminate\Database\Capsule\Manager::table("tbltickets")->where("tid", "=", $_GET["tid"])->pluck("service");
        if (!$relatedService) {
            return NULL;
        }
        $serviceType = substr($relatedService, 0, 1);
        $relatedService = substr($relatedService, 1);
        if ($serviceType == "D") {
            $url = "clientarea.php?action=domaindetails&id=" . $relatedService;
            list($target) = Illuminate\Database\Capsule\Manager::table("tbldomains")->where("id", "=", $relatedService)->pluck("domain");
            $icon = "<i class=\"fas fa-globe fa-fw\" style=\"float:none;\"></i>";
            $label = $icon . " <a href=\"" . $url . "\">" . $target . "</a>";
        } else {
            if ($serviceType == "S") {
                $url = "clientarea.php?action=productdetails&id=" . $relatedService;
                list($target) = Illuminate\Database\Capsule\Manager::table("tblhosting")->leftJoin("tblproducts", "tblhosting.packageid", "=", "tblproducts.id")->where("tblhosting.id", "=", $relatedService)->pluck("tblproducts.name");
                $icon = "<i class=\"fas fa-server fa-fw\" style=\"float:none;\"></i>";
                $label = $icon . " <a href=\"" . $url . "\">" . $target . "</a>";
            }
        }
        $primarySidebar->getChild("Ticket Information")->addChild("Related Service")->setClass("ticket-details-children")->setLabel("<span class=\"title\">Related Service</span><br>" . $label)->setOrder(20);
    }
});
add_hook("AdminAreaClientSummaryPage", 1, function ($vars) {
    return custompincodemessage($vars["userid"]);
});
add_hook("ClientAreaPage", 1, function ($vars) {
    $pinMessage = custompincodemessage($_SESSION["uid"]);
    if (!empty($pinMessage)) {
        return ["coodivgeneratePinCode" => $pinMessage];
    }
    return "";
});
define("PREVENTUNVERIFIEDORDERS", false);
define("DEACTIVATEACCOUNTAFTERXDAYS", 365);
define("CLOSEACCOUNTAFTERXDAYS", 365);
add_hook("ClientAreaPage", 1, function ($vars) {
    if (PREVENTUNVERIFIEDORDERS === true) {
        $client = Menu::context("client");
        if (!is_null($client) && $client && !$client->isEmailAddressVerified()) {
            $WEB_ROOT = $vars["WEB_ROOT"];
            if ($vars["templatefile"] != "verify-email") {
                $url = $WEB_ROOT . "/verify-email.php";
                header("Location: " . $url);
                exit;
            }
        }
    }
});
add_hook("DailyCronJob", 1, function ($vars) {
    if (intval(DEACTIVATEACCOUNTAFTERXDAYS) !== 0) {
        $dateCreated = date("Y-m-d", strtotime("now - " . intval(DEACTIVATEACCOUNTAFTERXDAYS) . " days"));
        $getAccounts = Illuminate\Database\Capsule\Manager::table("tblclients")->where("datecreated", "=", $dateCreated)->where("email_verified", "=", 0);
        foreach ($getAccounts->get() as $account) {
            Illuminate\Database\Capsule\Manager::table("tblclients")->where("id", $account->id)->update(["status" => "Inactive"]);
        }
    }
});
add_hook("DailyCronJob", 1, function ($vars) {
    if (intval(CLOSEACCOUNTAFTERXDAYS) !== 0) {
        $dateCreated = date("Y-m-d", strtotime("now - " . intval(CLOSEACCOUNTAFTERXDAYS) . " days"));
        $getAccounts = Illuminate\Database\Capsule\Manager::table("tblclients")->where("datecreated", "=", $dateCreated)->where("email_verified", "=", 0);
        foreach ($getAccounts->get() as $account) {
            Illuminate\Database\Capsule\Manager::table("tblclients")->where("id", $account->id)->update(["status" => "Closed"]);
        }
    }
});
add_hook("ClientAreaPage", 1, "homepage_products_hook");
add_hook("ClientAreaPage", -100000000, function ($vars) {
    if (isset($vars["inShoppingCart"]) && isset($_GET["a"]) && $_GET["a"] == "view") {
        $url = "cart.php?a=checkout";
        header("Location: " . $url);
        exit;
    }
});
add_hook("ClientAreaPage", 1, "announcements_hook");
if (isset($_SESSION["uid"]) && basename($_SERVER["SCRIPT_NAME"]) !== "logout.php" && strpos($_SERVER["QUERY_STRING"], "verificationId") === false) {
    $coodivServicesHooks = ["ClientAreaPage", "ClientAreaPageProductsServices", "ClientAreaHomepage", "ClientAreaPageProductDetails"];
} else {
    $coodivServicesHooks = ["ClientAreaPage", "ClientAreaPageProductsServices", "ClientAreaHomepage", "ClientAreaPageProductDetails"];
}
foreach ($coodivServicesHooks as $coodivServicesHook) {
    add_hook($coodivServicesHook, -2, function ($var = NULL) {
        $response = [];
        foreach (WHMCS\MarketConnect\Service::active()->get() as $service) {
        }
        return ["CoodivMarketConnectServices" => WHMCS\MarketConnect\Service::active()->get()->toArray()];
    });
}
require_once ROOTDIR . "/modules/addons/adminiTheme/classes/adminiTheme.class.php";
add_hook("AdminAreaHeadOutput", 1, function ($vars) {
    global $CONFIG;
    if ($vars["filename"] == "addonmodules" && $_GET["module"] == "adminiTheme") {
        return "<link type=\"text/css\" rel=\"stylesheet\" href=\"../modules/addons/adminiTheme/assets/css/styles.css\">\n<script type=\"text/javascript\" src=\"../modules/addons/adminiTheme/assets/js/scripts.js\"></script>\n<script type=\"text/javascript\" src=\"../modules/addons/adminiTheme/assets/js/jscolor.min.js\"></script>";
    }
});
add_hook("ClientAreaPage", 1, "coodiv_general_settings");
add_hook("ClientAreaPage", 1, "coodiv_colors_settings_settings");
add_hook("ClientAreaPage", 1, "coodiv_typographie_settings_settings");
add_hook("ClientAreaPage", 1, "coodiv_layouts_settings_settings");
add_hook("ClientAreaPage", 1, "coodiv_sidebar_options_settings");
add_hook("ClientAreaPage", 1, "coodiv_footer_options_settings");
add_hook("ClientAreaPage", 1, "coodiv_homepage_options_settings");
add_hook("ClientAreaPage", 1, function ($vars) {
    require_once ROOTDIR . "/modules/addons/adminiTheme/classes/templates.class.php";
    global $templates_compiledir;
    $smarty = new Smarty();
    $smarty->setCompileDir($templates_compiledir);
    $smarty->setTemplateDir(ROOTDIR . "/modules/addons/adminiTheme/themes");
    $menu = new adminiTheme();
    $menu->displayTranslation = true;
    $menu->toLanguage = $menu->detectClientAreaLanguage();
    $menu->initMenuItemAccess($vars);
    $menu->assignToSmarty["clientfirstname"] = $vars["clientsdetails"]["firstname"];
    $menu->assignToSmarty["clientlastname"] = $vars["clientsdetails"]["lastname"];
    $menuIntegrationCode = [];
    $getMenuGroups = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel__table")->get();
    $menuGroups = $menu->fromMYSQL($getMenuGroups);
    foreach ($menuGroups as $group) {
        $varialbleName = "adminiTheme_" . $group["id"];
        $smarty->assign("group", $group);
        $menuItems = $menu->generateMenu($group["id"]);
        $smarty->assign("menu", $menuItems);
        $templateFile = $supportedTemplates[$group["template"]]["file"];
        $menuHTML = $smarty->fetch("file:" . $templateFile);
        $menuIntegrationCode[$varialbleName] = $menuHTML;
    }
    return $menuIntegrationCode;
});
add_hook("ClientAreaPrimaryNavbar", 1000000000, function (WHMCS\View\Menu\Item $primaryNavbar) {
    $client = Menu::context("client");
    $isPrimarySet = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel__table")->where("isprimary", "=", 1);
    if ($isPrimarySet->count() === 0) {
        return true;
    }
    if (!is_null($primaryNavbar->getChildren())) {
        foreach ($primaryNavbar->getChildren() as $menuItem) {
            $primaryNavbar->removeChild($menuItem->getName());
        }
    }
    $menu = new adminiTheme();
    $menu->displayTranslation = true;
    $menu->toLanguage = $menu->detectClientAreaLanguage();
    $menu->assignToSmarty["clientfirstname"] = $client->firstname;
    $menu->assignToSmarty["clientlastname"] = $client->lastname;
    $getPrimaryNavbar = $isPrimarySet->get();
    $getPrimaryNavbar = (array) $getPrimaryNavbar[0];
    $menu = $menu->generateMenu($getPrimaryNavbar["id"]);
    $itemMarkedActive = false;
    $levelOneObject = NULL;
    $levelOneCounter = 0;
    foreach ($menu as $level1) {
        $levelOneObject = $primaryNavbar->addChild("level_1_" . $level1["id"]);
        $levelOneObject->setLabel(html_entity_decode($level1["title"]));
        $levelOneObject->setURI($level1["fullurl"]);
        $levelOneObject->setOrder($levelOneCounter);
        $levelOneObject->setAttribute("target", $level1["targetwindow"]);
        $levelOneObject->setBadge($level1["badge"]);
        foreach ($level1["attributes_array"] as $name => $value) {
            $levelOneObject->setAttribute($name, $value);
        }
        $itemClasses = [];
        if ($level1["isactive"] && $itemMarkedActive === false) {
            $itemMarkedActive = true;
            $itemClasses[] = $getPrimaryNavbar["css_activeclass"];
        }
        if (!empty($level1["css_class"])) {
            $itemClasses[] = trim($level1["css_class"]);
        }
        if (stripos($level1["fullurl"], "javascript:") !== false) {
            $itemClasses[] = "manu-manager-javascript-link";
        }
        $levelOneObject->setClass(join(" ", $itemClasses));
        if (is_string($level1["css_icon"]) && !empty($level1["css_icon"])) {
            $levelOneObject->setIcon(str_replace(["fa ", "glyphicon "], "", trim($level1["css_icon"])));
        }
        if (in_array(strtolower($level1["title"]), ["-----", "------", "divider"])) {
            $levelOneObject->setClass("nav-divider");
            $levelOneObject->setLabel("");
            $levelOneObject->setURI("#");
            $levelOneObject->setBadge("");
            $levelOneObject->setIcon("");
        }
        if (is_array($level1["children"]) && 0 < count($level1["children"])) {
            $levelTwoObject = NULL;
            $levelTwoCounter = 0;
            foreach ($level1["children"] as $level2) {
                $levelTwoObject = $levelOneObject->addChild("level_2_" . $level2["id"]);
                $levelTwoObject->setLabel(html_entity_decode($level2["title"]));
                $levelTwoObject->setURI($level2["fullurl"]);
                $levelTwoObject->setOrder($levelTwoCounter);
                $levelTwoObject->setAttribute("target", $level2["targetwindow"]);
                foreach ($level2["attributes_array"] as $name => $value) {
                    $levelTwoObject->setAttribute($name, $value);
                }
                $itemClasses = [];
                if ($level2["isactive"] && $itemMarkedActive === false) {
                    $itemMarkedActive = true;
                    $itemClasses[] = $getPrimaryNavbar["css_activeclass"];
                }
                if (!empty($level2["css_class"])) {
                    $itemClasses[] = trim($level2["css_class"]);
                }
                if (stripos($level2["fullurl"], "javascript:") !== false) {
                    $itemClasses[] = "manu-manager-javascript-link";
                }
                $levelTwoObject->setClass(join(" ", $itemClasses));
                if (!empty($level2["badge"]) && $level2["badge"] !== "none") {
                    $levelTwoObject->setBadge($level2["badge"]);
                }
                if (is_string($level2["css_icon"]) && !empty($level2["css_icon"])) {
                    $levelTwoObject->setIcon(str_replace(["fa ", "glyphicon "], "", trim($level2["css_icon"])));
                }
                if (in_array(strtolower($level2["title"]), ["-----", "------", "divider"])) {
                    $levelTwoObject->setClass("nav-divider");
                    $levelTwoObject->setLabel("");
                    $levelTwoObject->setURI("#");
                    $levelTwoObject->setBadge("");
                    $levelTwoObject->setIcon("");
                }
                $levelTwoCounter++;
            }
        }
        $levelOneCounter++;
    }
});
add_hook("ClientAreaPage", 1, function ($vars) {
    $client = Menu::context("client");
    $isSecondarySet = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel__table")->where("issecondary", "=", 1);
    if ($isSecondarySet->count() === 0) {
        return true;
    }
    $menu = new adminiTheme();
    $menu->displayTranslation = true;
    $menu->toLanguage = $menu->detectClientAreaLanguage();
    $menu->assignToSmarty["clientfirstname"] = $client->firstname;
    $menu->assignToSmarty["clientlastname"] = $client->lastname;
    $getSecondaryNavbar = $isSecondarySet->get();
    $getSecondaryNavbar = (array) $getSecondaryNavbar[0];
    $menu = $menu->generateMenu($getSecondaryNavbar["id"]);
    $itemMarkedActive = false;
    $levelOneObject = NULL;
    $levelOneCounter = 0;
    foreach ($menu as $level1) {
        foreach ($level1["attributes_array"] as $name => $value) {
            $levelOneObject->setAttribute($name, $value);
        }
        $itemClasses = [];
        if ($level1["isactive"] && $itemMarkedActive === false) {
            $itemMarkedActive = true;
            $itemClasses[] = $getSecondaryNavbar["css_activeclass"];
        }
        if (!empty($level1["css_class"])) {
            $itemClasses[] = trim($level1["css_class"]);
        }
        if (in_array(strtolower($level1["title"]), ["-----", "------", "divider"])) {
            $levelOneObject->setClass("nav-divider");
            $levelOneObject->setLabel("");
            $levelOneObject->setURI("#");
            $levelOneObject->setBadge("");
            $levelOneObject->setIcon("");
        }
        if (is_array($level1["children"]) && 0 < count($level1["children"])) {
            $levelTwoObject = NULL;
            $levelTwoCounter = 0;
            foreach ($level1["children"] as $level2) {
                foreach ($level2["attributes_array"] as $name => $value) {
                    $levelTwoObject->setAttribute($name, $value);
                }
                $itemClasses = [];
                if ($level2["isactive"] && $itemMarkedActive === false) {
                    $itemMarkedActive = true;
                    $itemClasses[] = $getSecondaryNavbar["css_activeclass"];
                }
                if (!empty($level2["css_class"])) {
                    $itemClasses[] = trim($level2["css_class"]);
                }
                if (!empty($level2["badge"]) && $level2["badge"] !== "none") {
                    $levelTwoObject->setBadge($level2["badge"]);
                }
                if (in_array(strtolower($level2["title"]), ["-----", "------", "divider"])) {
                    $levelTwoObject->setClass("nav-divider");
                    $levelTwoObject->setLabel("");
                    $levelTwoObject->setURI("#");
                    $levelTwoObject->setBadge("");
                    $levelTwoObject->setIcon("");
                }
                $levelTwoCounter++;
            }
        }
        $levelOneCounter++;
    }
    return ["adminithemefooteritems" => $menu];
});
// add_hook("ClientAreaFooterOutput", 1, "frontlisencecheck");
function coodiv_adminithemeversion($vars)
{
    return ["shuffythemeversion" => "1.0.4"];
}
function generatePinCode($clientid = 0, $length = 5)
{
    $clientid = intval($clientid);
    preg_match_all("!\\d+!", md5(date("Y") . $clientid), $matches);
    $numbers = join("", $matches[0]);
    return substr($numbers, 0, $length);
}
function custompincodemessage($userid)
{
    $dbdatass = Illuminate\Database\Capsule\Manager::table("coodiv__control__general__settings")->where("id", "1")->select("id", "customerspin")->get();
    if (!empty($dbdatass)) {
        $decodedatass = json_decode(json_encode($dbdatass), true);
        if (isset($decodedatass[0]["customerspin"]) && $decodedatass[0]["customerspin"] === "activated") {
            return "Support PIN: " . generatepincode($userid);
        }
    }
    return "";
}
function homepage_products_hook($vars)
{
    if ($vars["templatefile"] == "clientareahome") {
        $products = Illuminate\Database\Capsule\Manager::table("tbldomainpricing")->select("extension", "group")->get();
        $encodedata = json_encode($products);
        $decodedata = json_decode($encodedata, true);
        return ["spotlighttldscustom" => $decodedata];
    }
}
function announcements_hook($vars)
{
    if ($vars["templatefile"] != "announcements") {
        $announce = Illuminate\Database\Capsule\Manager::table("tblannouncements")->where("published", "1")->select("id", "date as rawDate", "title", "announcement as text")->orderBy("date", "desc")->get();
        $announcements = json_decode(json_encode($announce), true);
        return ["announcements" => $announcements];
    }
}
function coodiv_general_settings($vars)
{
    $itemid = "1";
    $test = Illuminate\Database\Capsule\Manager::table("coodiv__control__general__settings")->where("id", $itemid)->get();
    $encodedata = json_encode($test);
    $decodedata = json_decode($encodedata, true);
    return ["coodivsettings" => $decodedata[0]];
}
function coodiv_colors_settings_settings($vars)
{
    $dbdata = Illuminate\Database\Capsule\Manager::table("coodiv__control__colors__settings")->where("id", "1")->select("id", "darkmodefault", "allowdarkmode", "dafaultthemecolor")->get();
    $encodedata = json_encode($dbdata);
    $decodedata = json_decode($encodedata, true);
    return ["coodivcolorsettings" => $decodedata[0]];
}
function coodiv_typographie_settings_settings($vars)
{
    $dbdata = Illuminate\Database\Capsule\Manager::table("coodiv__control__typography__settings")->where("id", "1")->select("id", "themesettingtyponame", "themesettingtyponamertl")->get();
    $encodedata = json_encode($dbdata);
    $decodedata = json_decode($encodedata, true);
    return ["coodivtypographiesettings" => $decodedata[0]];
}
function coodiv_layouts_settings_settings($vars)
{
    $dbdata = Illuminate\Database\Capsule\Manager::table("coodiv__control__layout__settings")->where("id", "1")->select("id", "layoutsettingssidebarlayout", "layoutsettingssidebarposition", "layoutsettingssidebarstyle")->get();
    $encodedata = json_encode($dbdata);
    $decodedata = json_decode($encodedata, true);
    return ["coodivlayoutssettings" => $decodedata[0]];
}
function coodiv_sidebar_options_settings($vars)
{
    $dbdata = Illuminate\Database\Capsule\Manager::table("coodiv__control__sidebar__settings")->where("id", "1")->select("id", "themesidebarsettingsdarkmode", "themesidebarsettingscollapsed", "themesidebarsettingsallowusertoexpend", "themesidebarsettingsallowusertocollapse", "themesidebarsettingsfixedtopheader", "themesidebarsettingsfixedhorizontalmenu", "themesidebarsettingsfixedsecondarymenu", "themesidebarsettingssidebaronhover", "themesidebarsettingschildonhover", "themesidebarsettingsdarkicons", "themesidebarsettingswithouticons", "themesidebarsettingfullwidthtopheader", "themesidebarsettingfullwithhorizontalmenu")->get();
    $encodedata = json_encode($dbdata);
    $decodedata = json_decode($encodedata, true);
    return ["coodivsidebaroptions" => $decodedata[0]];
}
function coodiv_footer_options_settings($vars)
{
    $itemid = "1";
    $dbdata = Illuminate\Database\Capsule\Manager::table("coodiv__control__footer__settings")->where("id", $itemid)->get();
    $encodedata = json_encode($dbdata);
    $decodedata = json_decode($encodedata, true);
    return ["coodivfootersettings" => $decodedata[0]];
}
function coodiv_homepage_options_settings($vars)
{
    $itemid = "1";
    $dbdata = Illuminate\Database\Capsule\Manager::table("coodiv__control__homepage__settings")->where("id", $itemid)->get();
    $encodedata = json_encode($dbdata);
    $decodedata = json_decode($encodedata, true);
    return ["coodivhomepagesettings" => $decodedata[0]];
}
function frontlisencecheck($vars)
{
    $licenseresult = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel__license")->where("itemid", "52246062")->get();
    $licenseactivated = $licenseresult->count() > 0;
    if ($licenseactivated) {
    } else {
        echo "<div style=\"position: fixed;top: 0;left: 0;right: 0;bottom: 0;z-index: 99999;background: #fff;text-align: center;align-items: center;justify-content: center;display: flex;gap: 5px;flex-direction: column;\">\n            <h6 style=\"font-size: 35px;font-weight: bold;font-family: system-ui;margin: 0;\">Thank you for using AdminiTheme</h6>\n            <p style=\"font-size: 15px;font-weight: 400;font-family: system-ui;\">In order to remove this message, you need to verify your license from the AdminiTheme Control Panel in your admin panel, or contact the <a href=\"https://coodiv.net/support\" target=\"_blanc\">Coodiv support team</a></p>\n          </div>";
        exit;
    }
}

?>