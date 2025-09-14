<?php
/*
 * AdminiTheme - WHMCS Theme Module
 * Professional WHMCS Administration Theme
 */
if (!class_exists("adminiTheme")) {
    class EnvatoApi2
    {
        private static $bearer = "L5jaQ38zNxCF6EHmcCVeLMrLeI3YJwKd";
        public static function getPurchaseData($code)
        {
            $bearer = "bearer " . self::$bearer;
            $header = [];
            $header[] = "Content-length: 0";
            $header[] = "Content-type: application/json; charset=utf-8";
            $header[] = "Authorization: " . $bearer;
            $verify_url = "https://api.envato.com/v3/market/author/sale/";
            $ch_verify = curl_init($verify_url . "?code=" . $code);
            curl_setopt($ch_verify, CURLOPT_HTTPHEADER, $header);
            curl_setopt($ch_verify, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($ch_verify, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch_verify, CURLOPT_CONNECTTIMEOUT, 5);
            curl_setopt($ch_verify, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13");
            $cinit_verify_data = curl_exec($ch_verify);
            curl_close($ch_verify);
            if ($cinit_verify_data != "") {
                return json_decode($cinit_verify_data);
            }
            return false;
        }
        public static function verifyPurchase($code)
        {
            $verify_obj = self::getPurchaseData($code);
            if (false === $verify_obj || !is_object($verify_obj) || isset($verify_obj->error) || !isset($verify_obj->sold_at)) {
                return -1;
            }
            if ($verify_obj->supported_until == "" || $verify_obj->supported_until != NULL) {
                return $verify_obj;
            }
            return 0;
        }
    }
    class adminiTheme
    {
        public $breadCrumbs = [];
        public $displayFullURL = true;
        public $accessLevels = [];
        public $checkAccessability = true;
        public $displayTranslation = true;
        public $toLanguage = "";
        public $clientTotals;
        public $badges = [];
        public $assignToSmarty = [];
        public $allAccessLevel = [];
        public function __construct()
        {
            $this->initMenuItemBadge();
            $this->initMenuItemAccess();
        }
        public static function detectClientAreaLanguage()
        {
            global $CONFIG;
            if (isset($_SESSION["Language"]) && $_SESSION["Language"] != "") {
                $detectedLanguage = strtolower($_SESSION["Language"]);
            } else {
                $detectedLanguage = strtolower($CONFIG["Language"]);
            }
            return $detectedLanguage;
        }
        public static function detectUserInterfaceLanguage()
        {
            global $CONFIG;
            if (isset($_SESSION["Language"]) && $_SESSION["Language"] != "") {
                $detectedLanguage = strtolower($_SESSION["Language"]);
            } else {
                $detectedLanguage = strtolower($CONFIG["Language"]);
            }
            if (!file_exists(ROOTDIR . "/modules/addons/adminiTheme/langs" . $detectedLanguage . ".php")) {
                $detectedLanguage = "english";
            }
            return $detectedLanguage;
        }
        public static function loadLanguageFile()
        {
            $detectedLanguage = adminiTheme::detectUserInterfaceLanguage();
            include ROOTDIR . "/modules/addons/adminiTheme/langs" . $detectedLanguage . ".php";
            if (file_exists(ROOTDIR . "/modules/addons/adminiTheme/langsoverrides/" . $detectedLanguage . ".php")) {
                include ROOTDIR . "/modules/addons/adminiTheme/langsoverrides/" . $detectedLanguage . ".php";
            }
            return $_LANG;
        }
        public function addToBreadCrumbs($url, $title)
        {
            $this->breadCrumbs[$url] = $title;
        }
        public function getBreadCrumbs()
        {
            $list = $this->breadCrumbs;
            $newList = "<ul class=\"breadcrumb\">";
            foreach ($list as $url => $title) {
                if ($url == "") {
                    $newList .= "<li class=\"active\">" . $title . "</li>";
                } else {
                    $newList .= "<li><a href=\"" . $url . "\">" . $title . "</a></li>";
                }
            }
            $newList .= "</ul>";
            return $newList;
        }
        public static function fromMYSQL($result)
        {
            $encoded = json_encode($result);
            $array = json_decode($encoded, true);
            return $array;
        }
        public static function redirect($url = MODURL, $delay = 0)
        {
            echo "<META HTTP-EQUIV=\"Refresh\" CONTENT=\"" . $delay . "; URL=" . $url . "\">";
        }
        public static function getFolderFiles($path, $exclude = [])
        {
            $fileList = [];
            array_push($exclude, ".", "..");
            $openDir = new DirectoryIterator($path);
            foreach ($openDir as $item) {
                if (!in_array($item->getFileName(), $exclude) && $item->isFile()) {
                    $fileList[] = $item->getFileName();
                }
            }
            return $fileList;
        }
        public function getWHMCSLanguages()
        {
            global $CONFIG;
            $defaultLanguage = $CONFIG["Language"] . ".php";
            $files = $this->getFolderFiles(ROOTDIR . "/lang/", ["index.php", "README.txt", $defaultLanguage]);
            $languageList = [];
            foreach ($files as $file) {
                $splitFile = explode(".", $file);
                if ($splitFile[1] == "php") {
                    $languageList[] = strtolower($splitFile[0]);
                }
            }
            return $languageList;
        }
        public function generateMenu($groupid)
        {
            $groupInfo = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel__table")->where("id", $groupid)->get();
            $menu = $this->getMenuItems($groupid, 0);
            return $menu;
        }
        public function getMenuItems($groupid, $parentid)
        {
            global $CONFIG;
            $defaultLanguage = strtolower($CONFIG["Language"]);
            $getMenuInfo = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->where("groupid", $groupid)->where("parentid", $parentid)->where("topid", 0)->orderBy("reorder", "asc")->get();
            $menuInfo = adminiTheme::fromMYSQL($getMenuInfo);
            foreach ($menuInfo as $index => $menuItem) {
                if ($this->checkMenuItemAccess($menuItem["accesslevel"], $menuItem["clientgroups"]) === false && defined("VIEWMENUASADMIN") !== true) {
                    unset($menuInfo[$index]);
                } else {
                    $getMenuTranslation = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->where("topid", $menuItem["id"])->where("language", $this->toLanguage)->get();
                    $menuTranslation = adminiTheme::fromMYSQL($getMenuTranslation);
                    if ($menuTranslation[0]["title"] != "" && $this->displayTranslation === true) {
                        $menuInfo[$index]["title"] = $menuTranslation[0]["title"];
                    }
                    global $smarty;
                    if (is_object($smarty)) {
                        foreach ($this->assignToSmarty as $var => $value) {
                            $smarty->assign($var, $value);
                        }
                        $menuInfo[$index]["title"] = $smarty->fetch("string:" . $menuInfo[$index]["title"]);
                    }
                    $parseAttributes = unserialize($menuItem["attributes"]);
                    $menuAttributes = [];
                    $menuAttributesArray = [];
                    foreach ($parseAttributes as $name => $value) {
                        $menuAttributes[] = $name . "=\"" . $value . "\"";
                        $menuAttributesArray[$name] = $value;
                    }
                    $menuInfo[$index]["attributes"] = join(" ", $menuAttributes);
                    $menuInfo[$index]["attributes_array"] = $menuAttributesArray;
                    $menuInfo[$index]["fullurl"] = $this->parseMenuItemURL($menuItem);
                    $menuInfo[$index]["isactive"] = false;
                    if ($this->isMenuItemActive($menuInfo[$index]["fullurl"]) === 0) {
                        $menuInfo[$index]["isactive"] = true;
                    }
                    $menuInfo[$index]["badge"] = $this->getMenuItemBadge($menuItem["badge"]);
                    $menuInfo[$index]["accesslevelexplain"] = $this->allAccessLevel[$menuItem["accesslevel"]];
                    $menuInfo[$index]["children"] = $this->getMenuItems($groupid, $menuItem["id"]);
                }
            }
            return $menuInfo;
        }
        public function parseMenuItemURL($item)
        {
            global $CONFIG;
            $systemURL = rtrim($CONFIG["SystemURL"], "/") . "/";
            if ($CONFIG["SystemSSLURL"] != "") {
                $systemURL = rtrim($CONFIG["SystemSSLURL"], "/") . "/";
            }
            if ($this->displayFullURL === false) {
                $systemURL = "";
            }
            if (in_array($item["urltype"], ["clientarea-on", "clientarea-off"])) {
                $URL = $systemURL . urldecode($item["url"]);
            } else {
                if ($item["urltype"] == "support") {
                    $URL = $systemURL . "submitticket.php?step=2&deptid=" . intval($item["url"]);
                } else {
                    $URL = trim($item["url"]);
                }
            }
            return $URL;
        }
        public function checkMenuItemAccess($menuAccess, $menuClientGroups)
        {
            $client = Menu::context("client");
            if ($this->checkAccessability === false) {
                return true;
            }
            if ($menuAccess === 15) {
                $getClientGroups = explode(",", $menuClientGroups);
                if (is_array($getClientGroups) && 0 < count($getClientGroups)) {
                    if (in_array($client->groupid, $getClientGroups)) {
                        return true;
                    }
                    return false;
                }
                $menuAccess = 3;
            }
            return $this->accessLevels[$menuAccess];
        }
        public function initMenuItemAccess()
        {
            $client = Menu::context("client");
            $accessLevels = ["1" => true, "2" => false, "3" => false, "4" => false, "5" => false, "6" => false, "7" => false, "8" => false];
            if ($client->id === NULL) {
                $accessLevels[2] = true;
            } else {
                if ($client->id !== NULL) {
                    $accessLevels[3] = true;
                }
            }
            if (0 < $this->getClientTotals("activeservices")) {
                $accessLevels[4] = true;
            }
            if (0 < $this->getClientTotals("overdueinvoices")) {
                $accessLevels[5] = true;
            }
            if (0 < $this->getClientTotals("activetickets")) {
                $accessLevels[6] = true;
            }
            if (0 < $this->getClientTotals("activedomains")) {
                $accessLevels[7] = true;
            }
            if ($client->affiliate !== NULL && $client->id !== NULL) {
                $accessLevels[8] = true;
            }
            $this->accessLevels = $accessLevels;
        }
        public function initMenuItemBadge()
        {
            $badges = ["totalservices" => $this->getClientTotals("totalservices"), "activeservices" => $this->getClientTotals("activeservices"), "totaldomains" => $this->getClientTotals("totaldomains"), "activedomains" => $this->getClientTotals("activedomains"), "dueinvoices" => $this->getClientTotals("dueinvoices"), "overdueinvoices" => $this->getClientTotals("overdueinvoices"), "activetickets" => $this->getClientTotals("activetickets"), "creditbalance" => $this->getClientTotals("creditbalance"), "shoppingcartitems" => $this->getClientTotals("shoppingcartitems"), "none" => "none", "" => "none"];
            $this->badges = $badges;
        }
        public function getClientTotals($item)
        {
            if ($this->clientTotals === NULL) {
                $client = Menu::context("client");
                $services = json_decode($client->services, true);
                $domains = json_decode($client->domains, true);
                $invoices = json_decode($client->invoices, true);
                $totalServices = 0;
                if (!is_null($client->services) && is_array($services)) {
                    $totalServices = count($services);
                }
                $activeServices = 0;
                if (!is_null($client->services) && is_array($services)) {
                    foreach ($services as $service) {
                        if ($service["domainstatus"] == "Active") {
                            $activeServices++;
                        }
                    }
                }
                $totalDomains = 0;
                if (!is_null($client->domains) && is_array($domains)) {
                    $totalDomains = count($domains);
                }
                $activeDomains = 0;
                if (!is_null($client->domains) && is_array($domains)) {
                    foreach ($domains as $domain) {
                        if ($domain["status"] == "Active") {
                            $activeDomains++;
                        }
                    }
                }
                $today = date("Ymd");
                $dueInvoices = 0;
                if (!is_null($client->invoices) && is_array($invoices)) {
                    foreach ($invoices as $invoice) {
                        $dueDate = date("Ymd", strtotime($invoice["duedate"]));
                        if ($invoice["status"] == "Unpaid" && $dueDate <= $today) {
                            $dueInvoices++;
                        }
                    }
                }
                $overdueInvoices = 0;
                if (!is_null($client->invoices) && is_array($invoices)) {
                    foreach ($invoices as $invoice) {
                        $dueDate = date("Ymd", strtotime($invoice["duedate"]));
                        if ($invoice["status"] == "Unpaid" && $dueDate < $today) {
                            $overdueInvoices++;
                        }
                    }
                }
                $getActiveTicketsStatus = Illuminate\Database\Capsule\Manager::table("tblticketstatuses")->where("showactive", "=", 1)->select("title")->get();
                $activeStatuses = [];
                foreach ($getActiveTicketsStatus as $status) {
                    $status = (array) $status;
                    $activeStatuses[] = $status["title"];
                }
                $getActiveTickets = Illuminate\Database\Capsule\Manager::table("tbltickets")->where("userid", "=", $client->id)->whereIn("status", $activeStatuses)->count();
                $totalCartItems = 0;
                if (is_array($_SESSION["cart"]["products"])) {
                    $totalCartItems = $totalCartItems + count($_SESSION["cart"]["products"]);
                }
                if (is_array($_SESSION["cart"]["domains"])) {
                    $totalCartItems = $totalCartItems + count($_SESSION["cart"]["domains"]);
                }
                $currencyData = getCurrency($client->id);
                $creditBalance = formatCurrency($client->credit, $currencyData);
                $this->clientTotals = ["totalservices" => $totalServices, "activeservices" => $activeServices, "totaldomains" => $totalDomains, "activedomains" => $activeDomains, "dueinvoices" => $dueInvoices, "overdueinvoices" => $overdueInvoices, "activetickets" => $getActiveTickets, "creditbalance" => $creditBalance, "shoppingcartitems" => $totalCartItems];
            }
            return $this->clientTotals[$item];
        }
        public function getMenuItemBadge($badge)
        {
            return $this->badges[$badge];
        }
        public function isMenuItemActive($targetURL)
        {
            $currentURL = "http://" . $_SERVER["HTTP_HOST"] . $_SERVER["REQUEST_URI"];
            $parseCurrentURL = parse_url($currentURL);
            $buildCurrentURL = str_replace("www.", "", $parseCurrentURL["host"]);
            if ($parseCurrentURL["path"]) {
                $buildCurrentURL .= $parseCurrentURL["path"];
            }
            if ($parseCurrentURL["query"]) {
                $splitQueries = explode("&", str_replace("&amp;", "&", $parseCurrentURL["query"]));
                if (is_array($splitQueries) && 0 < count($splitQueries)) {
                    $buildCurrentURL .= "?";
                    $queries = [];
                    foreach ($splitQueries as $index => $value) {
                        $splitValue = explode("=", $value);
                        if (!in_array($splitValue[0], ["language", "systpl", "carttpl"])) {
                            $queries[$splitValue[0]] = urldecode($splitValue[1]);
                        }
                    }
                    ksort($queries);
                    $newQueries = [];
                    foreach ($queries as $key => $value) {
                        $newQueries[] = $key . "=" . $value;
                    }
                    $buildCurrentURL .= join("&", $newQueries);
                }
            }
            $currentURL = $buildCurrentURL;
            $parseTargetURL = parse_url($targetURL);
            $buildTargetURL = str_replace("www.", "", $parseTargetURL["host"]);
            if ($parseTargetURL["path"]) {
                $buildTargetURL .= $parseTargetURL["path"];
            }
            if ($parseTargetURL["query"]) {
                $splitQueries = explode("&", str_replace("&amp;", "&", $parseTargetURL["query"]));
                if (is_array($splitQueries) && 0 < count($splitQueries)) {
                    $buildTargetURL .= "?";
                    $queries = [];
                    foreach ($splitQueries as $index => $value) {
                        $splitValue = explode("=", $value);
                        if (!in_array($splitValue[0], ["language", "systpl", "carttpl"])) {
                            $queries[$splitValue[0]] = urldecode($splitValue[1]);
                        }
                    }
                    ksort($queries);
                    $newQueries = [];
                    foreach ($queries as $key => $value) {
                        $newQueries[] = $key . "=" . $value;
                    }
                    $buildTargetURL .= join("&", $newQueries);
                }
            }
            $targetURL = $buildTargetURL;
            return strcmp($currentURL, $targetURL);
        }
        public function installWHMCSPrimaryNavbar($groupid)
        {
            global $CONFIG;
            $defaultLanguage = strtolower($CONFIG["Language"]);
            $systemLanguages = $this->getWHMCSLanguages();
            $Translations = [];
            foreach ($systemLanguages as $language) {
                unset($_LANG);
                if (is_file(ROOTDIR . "/lang/" . $language . ".php") !== false) {
                    include ROOTDIR . "/lang/" . $language . ".php";
                    $Translations[$language] = $_LANG;
                    if (is_file(ROOTDIR . "/lang/overrides/" . $language . ".php") !== false) {
                        unset($_LANG);
                        include ROOTDIR . "/lang/overrides/" . $language . ".php";
                        $Translations[$language] = array_replace($Translations[$language], $_LANG);
                    }
                }
            }
            if (is_file(ROOTDIR . "/lang/" . $defaultLanguage . ".php") === true) {
                unset($_LANG);
                include ROOTDIR . "/lang/" . $defaultLanguage . ".php";
                $DefaultTranslation = $_LANG;
                unset($_LANG);
                if (is_file(ROOTDIR . "/lang/overrides/" . $defaultLanguage . ".php") === true) {
                    include ROOTDIR . "/lang/overrides/" . $defaultLanguage . ".php";
                    $DefaultTranslation = array_replace($DefaultTranslation, $_LANG);
                }
            }
            $getProductGroups = Illuminate\Database\Capsule\Manager::table("tblproductgroups")->where("hidden", "=", 0)->orderBy("order", "asc")->get();
            $productGroups = [];
            foreach ($getProductGroups as $group) {
                $group = (array) $group;
                $productGroups[$group["id"]] = $group["name"];
            }
            $menuItemHome = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) $DefaultTranslation["clientareanavhome"], "url" => "index.php", "urltype" => "clientarea-off", "reorder" => 0, "accesslevel" => 2, "language" => $defaultLanguage, "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemHome, "title" => (string) $translation["clientareanavhome"], "language" => $language]);
            }
            $menuItemHome = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) $DefaultTranslation["clientareanavhome"], "url" => "clientarea.php", "urltype" => "clientarea-on", "reorder" => 0, "accesslevel" => 3, "language" => $defaultLanguage, "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemHome, "parentid" => 0, "title" => (string) $translation["clientareanavhome"], "language" => $language]);
            }
            $menuItemStore = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) $DefaultTranslation["navStore"], "url" => "cart.php", "urltype" => "clientarea-off", "reorder" => 1, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemStore, "title" => (string) $translation["navStore"], "language" => $language]);
            }
            $menuItemBrowseAll = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemStore, "title" => (string) $DefaultTranslation["navBrowseProductsServices"], "url" => "cart.php", "urltype" => "clientarea-off", "reorder" => 1, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemBrowseAll, "parentid" => $menuItemStore, "title" => (string) $translation["navBrowseProductsServices"], "language" => $language]);
            }
            Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemStore, "title" => "-----", "url" => "#", "urltype" => "customurl", "reorder" => 2, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            $storeSubMenuCounter = 3;
            foreach ($productGroups as $groupID => $groupName) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemStore, "title" => (string) $groupName, "url" => "cart.php?gid=" . $groupID, "urltype" => "customurl", "reorder" => $storeSubMenuCounter, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
                $storeSubMenuCounter++;
            }
            $menuItemRegisterDomain = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemStore, "title" => (string) $DefaultTranslation["navregisterdomain"], "url" => "cart.php?a=add&domain=register", "urltype" => "clientarea-off", "reorder" => $storeSubMenuCounter + 1, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemRegisterDomain, "parentid" => $menuItemStore, "title" => (string) $translation["navregisterdomain"], "language" => $language]);
            }
            $menuItemTransferDomain = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemStore, "title" => (string) $DefaultTranslation["navtransferdomain"], "url" => "cart.php?a=add&domain=transfer", "urltype" => "clientarea-off", "reorder" => $storeSubMenuCounter + 2, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemTransferDomain, "parentid" => $menuItemStore, "title" => (string) $translation["navtransferdomain"], "language" => $language]);
            }
            $menuItemAnnouncements = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) $DefaultTranslation["announcementstitle"], "url" => "announcements.php", "urltype" => "clientarea-off", "reorder" => 2, "accesslevel" => 2, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemAnnouncements, "parentid" => 0, "title" => (string) $translation["announcementstitle"], "language" => $language]);
            }
            $menuItemKB = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) $DefaultTranslation["knowledgebasetitle"], "url" => "knowledgebase.php", "urltype" => "clientarea-off", "reorder" => 3, "accesslevel" => 2, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemKB, "parentid" => 0, "title" => (string) $translation["knowledgebasetitle"], "language" => $language]);
            }
            $menuItemNetworkStatus = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) $DefaultTranslation["networkstatustitle"], "url" => "serverstatus.php", "urltype" => "clientarea-on", "reorder" => 4, "accesslevel" => 2, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemNetworkStatus, "parentid" => 0, "title" => (string) $translation["networkstatustitle"], "language" => $language]);
            }
            $menuItemContact = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) $DefaultTranslation["contactus"], "url" => "contact.php", "urltype" => "clientarea-off", "reorder" => 5, "accesslevel" => 2, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemContact, "parentid" => 0, "title" => (string) $translation["contactus"], "language" => $language]);
            }
            $menuItemServices = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) $DefaultTranslation["navservices"], "url" => "#", "urltype" => "customurl", "reorder" => 7, "accesslevel" => 3, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemServices, "parentid" => 0, "title" => (string) $translation["navservices"], "language" => $language]);
            }
            $menuItemMyServices = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemServices, "title" => (string) $DefaultTranslation["clientareanavservices"], "url" => "clientarea.php?action=products", "urltype" => "clientarea-on", "reorder" => 1, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemMyServices, "parentid" => $menuItemServices, "title" => (string) $translation["clientareanavservices"], "language" => $language]);
            }
            $menuItemMyProjects = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemServices, "title" => (string) $DefaultTranslation["clientareaprojects"], "url" => "index.php?m=project_management", "urltype" => "customurl", "reorder" => 2, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemMyProjects, "parentid" => $menuItemServices, "title" => (string) $translation["clientareaprojects"], "language" => $language]);
            }
            Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemServices, "title" => "-----", "url" => "#", "urltype" => "customurl", "reorder" => 3, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            $menuItemNewOrder = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemServices, "title" => (string) $DefaultTranslation["navservicesorder"], "url" => "cart.php", "urltype" => "clientarea-off", "reorder" => 4, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemNewOrder, "parentid" => $menuItemServices, "title" => (string) $translation["navservicesorder"], "language" => $language]);
            }
            $menuItemAddonsAvailable = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemServices, "title" => (string) $DefaultTranslation["clientareaviewaddons"], "url" => "cart.php?gid=addons", "urltype" => "clientarea-on", "reorder" => 5, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemAddonsAvailable, "parentid" => $menuItemServices, "title" => (string) $translation["clientareaviewaddons"], "language" => $language]);
            }
            $menuItemDomains = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) $DefaultTranslation["navdomains"], "url" => "#", "urltype" => "customurl", "reorder" => 8, "accesslevel" => 3, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemDomains, "parentid" => 0, "title" => (string) $translation["navdomains"], "language" => $language]);
            }
            $menuItemMyDomains = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemDomains, "title" => (string) $DefaultTranslation["clientareanavdomains"], "url" => "clientarea.php?action=domains", "urltype" => "clientarea-on", "reorder" => 1, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemMyDomains, "parentid" => $menuItemDomains, "title" => (string) $translation["clientareanavdomains"], "language" => $language]);
            }
            Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemDomains, "title" => "-----", "url" => "#", "urltype" => "customurl", "reorder" => 2, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            $menuItemRenewDomains = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemDomains, "title" => (string) $DefaultTranslation["navrenewdomains"], "url" => "cart.php?gid=renewals", "urltype" => "clientarea-on", "reorder" => 3, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemRenewDomains, "parentid" => $menuItemDomains, "title" => (string) $translation["navrenewdomains"], "language" => $language]);
            }
            $menuItemRegisterDomain = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemDomains, "title" => (string) $DefaultTranslation["navregisterdomain"], "url" => "cart.php?a=add&domain=register", "urltype" => "clientarea-off", "reorder" => 4, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemRegisterDomain, "parentid" => $menuItemDomains, "title" => (string) $translation["navregisterdomain"], "language" => $language]);
            }
            $menuItemTransferDomain = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemDomains, "title" => (string) $DefaultTranslation["navtransferdomain"], "url" => "cart.php?a=add&domain=transfer", "urltype" => "clientarea-off", "reorder" => 5, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemTransferDomain, "parentid" => $menuItemDomains, "title" => (string) $translation["navtransferdomain"], "language" => $language]);
            }
            Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemDomains, "title" => "-----", "url" => "#", "urltype" => "customurl", "reorder" => 6, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            $menuItemDomainSearch = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemDomains, "title" => (string) $DefaultTranslation["navdomainsearch"], "url" => "domainchecker.php", "urltype" => "clientarea-off", "reorder" => 7, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemDomainSearch, "parentid" => $menuItemDomains, "title" => (string) $translation["navdomainsearch"], "language" => $language]);
            }
            $menuItemBilling = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) $DefaultTranslation["navbilling"], "url" => "#", "urltype" => "customurl", "reorder" => 9, "accesslevel" => 3, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemBilling, "parentid" => 0, "title" => (string) $translation["navbilling"], "language" => $language]);
            }
            $menuItemMyInvoices = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemBilling, "title" => (string) $DefaultTranslation["invoices"], "url" => "clientarea.php?action=invoices", "urltype" => "clientarea-on", "reorder" => 1, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemMyInvoices, "parentid" => $menuItemBilling, "title" => (string) $translation["invoices"], "language" => $language]);
            }
            $menuItemMyQuotes = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemBilling, "title" => (string) $DefaultTranslation["quotestitle"], "url" => "clientarea.php?action=quotes", "urltype" => "clientarea-on", "reorder" => 2, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemMyQuotes, "parentid" => $menuItemBilling, "title" => (string) $translation["quotestitle"], "language" => $language]);
            }
            Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemBilling, "title" => "-----", "url" => "#", "urltype" => "customurl", "reorder" => 3, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            $menuItemAddFunds = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemBilling, "title" => (string) $DefaultTranslation["addfunds"], "url" => "clientarea.php?action=addfunds", "urltype" => "clientarea-on", "reorder" => 4, "accesslevel" => 9, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemAddFunds, "parentid" => $menuItemBilling, "title" => (string) $translation["addfunds"], "language" => $language]);
            }
            $menuItemMassPayment = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemBilling, "title" => (string) $DefaultTranslation["masspaytitle"], "url" => "clientarea.php?action=masspay&all=true", "urltype" => "clientarea-on", "reorder" => 5, "accesslevel" => 10, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemMassPayment, "parentid" => $menuItemBilling, "title" => (string) $translation["masspaytitle"], "language" => $language]);
            }
            $menuItemCreditCard = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemBilling, "title" => (string) $DefaultTranslation["navmanagecc"], "url" => "clientarea.php?action=creditcard", "urltype" => "clientarea-on", "reorder" => 6, "accesslevel" => 8, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemCreditCard, "parentid" => $menuItemBilling, "title" => (string) $translation["navmanagecc"], "language" => $language]);
            }
            $menuItemSupport = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) $DefaultTranslation["navsupport"], "url" => "#", "urltype" => "customurl", "reorder" => 10, "accesslevel" => 3, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemSupport, "parentid" => 0, "title" => (string) $translation["navsupport"], "language" => $language]);
            }
            $menuItemTickets = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemSupport, "title" => (string) $DefaultTranslation["navtickets"], "url" => "supporttickets.php", "urltype" => "clientarea-on", "reorder" => 1, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemTickets, "parentid" => $menuItemSupport, "title" => (string) $translation["navtickets"], "language" => $language]);
            }
            $menuItemAnnouncements = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemSupport, "title" => (string) $DefaultTranslation["announcementstitle"], "url" => "announcements.php", "urltype" => "clientarea-off", "reorder" => 2, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemAnnouncements, "parentid" => $menuItemSupport, "title" => (string) $translation["announcementstitle"], "language" => $language]);
            }
            $menuItemKB = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemSupport, "title" => (string) $DefaultTranslation["knowledgebasetitle"], "url" => "knowledgebase.php", "urltype" => "clientarea-off", "reorder" => 3, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemKB, "parentid" => $menuItemSupport, "title" => (string) $translation["knowledgebasetitle"], "language" => $language]);
            }
            $menuItemDownloads = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemSupport, "title" => (string) $DefaultTranslation["downloadstitle"], "url" => "downloads.php", "urltype" => "clientarea-off", "reorder" => 4, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemDownloads, "parentid" => $menuItemSupport, "title" => (string) $translation["downloadstitle"], "language" => $language]);
            }
            $menuItemNetwork = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemSupport, "title" => (string) $DefaultTranslation["networkstatustitle"], "url" => "serverstatus.php", "urltype" => "clientarea-on", "reorder" => 5, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemNetwork, "parentid" => $menuItemSupport, "title" => (string) $translation["networkstatustitle"], "language" => $language]);
            }
            $menuItemOpenTicket = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) $DefaultTranslation["navopenticket"], "url" => "submitticket.php", "urltype" => "clientarea-off", "reorder" => 11, "accesslevel" => 3, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemOpenTicket, "parentid" => $menuItemSupport, "title" => (string) $translation["navopenticket"], "language" => $language]);
            }
            $menuItemAffiliates = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) $DefaultTranslation["affiliatestitle"], "url" => "affiliates.php", "urltype" => "clientarea-on", "reorder" => 12, "accesslevel" => 3, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemAffiliates, "parentid" => 0, "title" => (string) $translation["affiliatestitle"], "language" => $language]);
            }
        }
        public function installWHMCSSecondaryNavbar($groupid)
        {
            global $CONFIG;
            $defaultLanguage = strtolower($CONFIG["Language"]);
            $systemLanguages = $this->getWHMCSLanguages();
            $Translations = [];
            foreach ($systemLanguages as $language) {
                unset($_LANG);
                if (is_file(ROOTDIR . "/lang/" . $language . ".php") !== false) {
                    include ROOTDIR . "/lang/" . $language . ".php";
                    $Translations[$language] = $_LANG;
                    if (is_file(ROOTDIR . "/lang/overrides/" . $language . ".php") !== false) {
                        unset($_LANG);
                        include ROOTDIR . "/lang/overrides/" . $language . ".php";
                        $Translations[$language] = array_replace($Translations[$language], $_LANG);
                    }
                }
            }
            if (is_file(ROOTDIR . "/lang/" . $defaultLanguage . ".php") === true) {
                unset($_LANG);
                include ROOTDIR . "/lang/" . $defaultLanguage . ".php";
                $DefaultTranslation = $_LANG;
                unset($_LANG);
                if (is_file(ROOTDIR . "/lang/overrides/" . $defaultLanguage . ".php") === true) {
                    include ROOTDIR . "/lang/overrides/" . $defaultLanguage . ".php";
                    $DefaultTranslation = array_replace($DefaultTranslation, $_LANG);
                }
            }
            $menuItemAccount = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) $DefaultTranslation["account"], "url" => "#", "urltype" => "customurl", "reorder" => 1, "accesslevel" => 2, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemAccount, "parentid" => 0, "title" => (string) $translation["account"], "language" => $language]);
            }
            $menuItemLogin = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemAccount, "title" => (string) $DefaultTranslation["login"], "url" => "login.php", "urltype" => "clientarea-off", "reorder" => 1, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemLogin, "parentid" => $menuItemAccount, "title" => (string) $translation["login"], "language" => $language]);
            }
            $menuItemRegister = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemAccount, "title" => (string) $DefaultTranslation["register"], "url" => "register.php", "urltype" => "clientarea-off", "reorder" => 2, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemRegister, "parentid" => $menuItemAccount, "title" => (string) $translation["register"], "language" => $language]);
            }
            Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemAccount, "title" => "-----", "url" => "#", "urltype" => "customurl", "reorder" => 3, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            $menuItemReset = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemAccount, "title" => (string) $DefaultTranslation["forgotpw"], "url" => "pwreset.php", "urltype" => "clientarea-off", "reorder" => 4, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemReset, "parentid" => $menuItemAccount, "title" => (string) $translation["forgotpw"], "language" => $language]);
            }
            $menuItemAccount = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => 0, "title" => (string) sprintf($DefaultTranslation["helloname"], "{\$clientfirstname}"), "url" => "#", "urltype" => "customurl", "reorder" => 2, "accesslevel" => 3, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemAccount, "parentid" => 0, "title" => (string) sprintf($translation["helloname"], "{\$clientfirstname}"), "language" => $language]);
            }
            $menuItemAccountDetails = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemAccount, "title" => (string) $DefaultTranslation["editaccountdetails"], "url" => "clientarea.php?action=details", "urltype" => "clientarea-on", "reorder" => 1, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemAccountDetails, "parentid" => $menuItemAccount, "title" => (string) $translation["editaccountdetails"], "language" => $language]);
            }
            $menuItemManageCC = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemAccount, "title" => (string) $DefaultTranslation["navmanagecc"], "url" => "clientarea.php?action=creditcard", "urltype" => "clientarea-on", "reorder" => 2, "accesslevel" => 8, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemManageCC, "parentid" => $menuItemAccount, "title" => (string) $translation["navmanagecc"], "language" => $language]);
            }
            $menuItemContacts = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemAccount, "title" => (string) $DefaultTranslation["clientareanavcontacts"], "url" => "clientarea.php?action=contacts", "urltype" => "clientarea-on", "reorder" => 3, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemContacts, "parentid" => $menuItemAccount, "title" => (string) $translation["affiliatestitle"], "language" => $language]);
            }
            $menuItemAddFunds = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemAccount, "title" => (string) $DefaultTranslation["addfunds"], "url" => "clientarea.php?action=addfunds", "urltype" => "clientarea-on", "reorder" => 4, "accesslevel" => 9, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemAddFunds, "parentid" => $menuItemAccount, "title" => (string) $translation["addfunds"], "language" => $language]);
            }
            $menuItemEmailHistory = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemAccount, "title" => (string) $DefaultTranslation["navemailssent"], "url" => "clientarea.php?action=emails", "urltype" => "clientarea-on", "reorder" => 5, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemEmailHistory, "parentid" => $menuItemAccount, "title" => (string) $translation["navemailssent"], "language" => $language]);
            }
            $menuItemChange = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemAccount, "title" => (string) $DefaultTranslation["clientareanavchangepw"], "url" => "clientarea.php?action=changepw", "urltype" => "clientarea-on", "reorder" => 6, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemChange, "parentid" => $menuItemAccount, "title" => (string) $translation["clientareanavchangepw"], "language" => $language]);
            }
            Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemAccount, "title" => "-----", "url" => "#", "urltype" => "customurl", "reorder" => 7, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            $menuItemLogout = Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insertGetId(["groupid" => $groupid, "topid" => 0, "parentid" => $menuItemAccount, "title" => (string) $DefaultTranslation["clientareanavlogout"], "url" => "logout.php", "urltype" => "clientarea-on", "reorder" => 8, "accesslevel" => 1, "language" => $defaultLanguage, "badge" => "none", "datecreate" => date("Y-m-d H:i:s"), "datemodify" => date("Y-m-d H:i:s")]);
            foreach ($Translations as $language => $translation) {
                Illuminate\Database\Capsule\Manager::table("coodiv__control__panel_items")->insert(["groupid" => $groupid, "topid" => $menuItemLogout, "parentid" => $menuItemAccount, "title" => (string) $translation["affiliatestitle"], "language" => $language]);
            }
        }
        public function input($input, string $type = "string")
        {
            if ($input === null) {
                return $type === "array" ? [] : "";
            }
            
            if ($type === "int" || is_numeric($input)) {
                return intval($input);
            }
            if ($type === "array" || is_array($input)) {
                if (!is_array($input) || count($input) == 0) {
                    return [];
                }
                $newInput = [];
                foreach ($input as $i => $value) {
                    if (is_array($value)) {
                        $newInput[$i] = $this->input($value, "array");
                    } else {
                        $newInput[$i] = htmlspecialchars(strip_tags($value), ENT_QUOTES, 'UTF-8');
                    }
                }
                return $newInput;
            } else {
                return htmlspecialchars(strip_tags($input), ENT_QUOTES, 'UTF-8');
            }
        }
    }
}

?>