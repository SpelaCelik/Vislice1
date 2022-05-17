
% rebase('base.tpl', title="Vislice")
  Geslo: {{geslo}}</br>
  Nepravilni ugibi: {{nepravilni}}</br>
  <br>Stopenja obešenost: {{obesenost}}</br>
<img src="/img/{{obesenost}}.jpg" alt="obesanje">
  <!--<img src="img/10.jpg" alt="obesanje">-->
 % if stanje != model.ZMAGA and stanje != model.PORAZ:   
<form action="" method="post">
  <input name="crka"> <input type="submit" value="Ugibaj">
</form>
 % elif stanje == model.ZMAGA:
<br>Bravo zmagali ste! Hočete igrati še enkrat?</br>
<form action="/nova_igra/" method="post">
    <button type="submit">Nova igra</button>
  </form>
 % elif stanje == model.PORAZ:
<br>Izgubili ste. Pravilno geslo je bilo {{celo_geslo}}.</br>
<br>Želite igrati še enkrat? </br>
<form action="/nova_igra/" method="post">
    <button type="submit">Nova igra</button>
  </form>


% end

