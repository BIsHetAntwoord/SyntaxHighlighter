<span class="keyword1">MOV</span>&nbsp;<span class="keyword2">EAX</span><span class="operator">,</span>&nbsp;<span class="operator">[</span><span class="keyword2">SI</span><span class="operator">+</span><span class="keyword2">DI</span><span class="operator">*</span><span class="number">4</span><span class="operator">]</span><br>
<span class="keyword1">ADD</span>&nbsp;<span class="keyword2">ESP</span><span class="operator">,</span><span class="number">4</span><br>
<span class="keyword1">MOV</span>&nbsp;<span class="operator">[</span><span class="keyword2">EAX</span><span class="operator">+</span><span class="number">4</span><span class="operator">]</span><span class="operator">,</span><span class="keyword2">EBP</span><br>
<span class="keyword1">INT</span>&nbsp;<span class="number">80H</span><br>