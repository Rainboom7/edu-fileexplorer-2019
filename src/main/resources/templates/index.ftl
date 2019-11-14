<#ftl output_format="HTML">
<#setting url_escaping_charset="UTF-8">
<!doctype html>
<html>
<head>
    <title>File Manager</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <script type="text/javascript" src="/scripts/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="/scripts/sc.js"></script>
    <script type="text/javascript" src="/scripts/bootstrap.bundle.js"></script>
    <script type="text/javascript" src="/scripts/bootstrap.js"></script>
    <style>
    </style>
</head>
<body>

	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
    <#list directory.parentFolders as folder>
			<li class="breadcrumb-item"><a href="/?path=${folder.path?url}">${folder.name}</a></li>
    </#list>
		</ol>
	</nav>
<div class="container">
    <div class="input-group mb-3 search">
        <input type="text" id="search" placeholder="File name" class="form-control"
               aria-label="Text input with segmented dropdown button">
        <div class="input-group-append">
            <button type="button" id="search_action" class="btn btn-outline-secondary">Search Here</button>
            <button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
                <a class="dropdown-item" onclick="changeSearch(this)">Search Here</a>
                <a class="dropdown-item" onclick="changeSearch(this)">Search in children</a>
            </div>
        </div>
    </div>
    <div class="row bg-white p-3 border-bottom">
        <div class="col">
            <strong>Name</strong>
        </div>
        <div class="col-6 row">
            <div class="col-8"><strong>Date of change</strong></div>
            <div class="col-4"><strong>Size</strong></div>
        </div>
    </div>
    <div id="files_container" class="bg-white">
        <#import "filesView.ftl" as macro>
        <@macro.show_all directory/>
    </div>
</div>
</body>
</html>
