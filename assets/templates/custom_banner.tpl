<p>
    <em>网站可能很快会被封锁， 建议您导出宝典，以备需要时能够再次打开。</em>
</p>
<p>此页面已将所有网站页面合并为一个。您可以使用“文件”>“打印”>“另存为 PDF”导出为 PDF文件。</b></p>

<p>你也可以点击 <a id="printpdfbtn" href="https://timvink.github.io/mkdocs-print-site-plugin/how-to/export-PDF.html">export to PDF</a> 导出为PDF</p>

<script>
printPdf = function (event) {
  var iframe = this._printIframe;
  if (!this._printIframe) {
    iframe = this._printIframe = document.createElement('iframe');
    document.body.appendChild(iframe);

    iframe.style.display = 'none';
    iframe.onload = function() {
      setTimeout(function() {
        iframe.focus();
        iframe.contentWindow.print();
      }, 1);
    };
  }
  
  iframe.src = window.location.href;
  event.preventDefault();
}

document.getElementById("printpdfbtn").addEventListener('click', printPdf, false)
</script>