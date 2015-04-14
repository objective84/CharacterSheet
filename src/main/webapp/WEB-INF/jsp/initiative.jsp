<%--
  Created by IntelliJ IDEA.
  User: PVarnerHowland
  Date: 4/1/2015
  Time: 12:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>
<%@ taglib prefix="modals" tagdir="/WEB-INF/tags/modals" %>
<link href="/CharacterSheet/resources/css/global.css" rel="stylesheet">

<html>
<head>
  <template:javascript/>

</head>
<body id="body">


<div id="initiative">
  <input class="float-right" type="checkbox" id="dm-view-toggle"><span class="float-right">DM</span>
  <br/>
  <input class="hide float-right" type="text" id="dm-pw">
  <table>
    <tr>
      <td> Name </td><td><input type="text" value="" id="character-name" placeholder="Name"></td><td><span id="name-error" class="hide error">Enter your name</span></td>
    </tr>
    <tr>
      <td>Dex Mod </td>
      <td>
        <select id="character-dex">
          <option>-5</option>
          <option>-4</option>
          <option>-3</option>
          <option>-2</option>
          <option>-1</option>
          <option selected="selected">0</option>
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>

      </td>
    </tr>
  </table>
  <h3 style="display: inline-block;">Size Modifiers</h3> <h3 style="margin-left:108px; display: inline-block;">Actions</h3>
  <div id="size-modifiers">
    <table class="table-border side-by-side">
      <th>Creature Size</th> <th>Initiative Modifier</th>
      <tr><td><input type="radio" name="size" value="5" data-text="Tiny">Tiny</td><td>+5</td></tr>
      <tr><td><input type="radio" name="size" value="2" data-text="Small">Small</td><td>+2</td></tr>
      <tr><td><input type="radio" name="size" value="0" checked="checked" data-text="Medium">Medium</td><td>0</td></tr>
      <tr><td><input type="radio" name="size" value="-2" data-text="Large">Large</td><td>-2</td></tr>
      <tr><td><input type="radio" name="size" value="-5" data-text="Huge">Huge</td><td>-5</td></tr>
      <tr><td><input type="radio" name="size" value="-8" data-text="Gargantuan">Gargantuan</td><td>-8</td></tr>
    </table>
  </div>
  <div id="action-modifiers">
    <table class="table-border side-by-side">
      <th>Creature Size</th><th>Initiative Modifier</th>
      <tr>
        <td><input type="radio" name="action" id="spellcasting">Spellcasting</td>
        <td><input style="width: 70px" type="text" value="" id="spell-level" placeholder="Spell Level"></td>
      </tr>
      <tr>
        <td><input type="radio" name="action" value="-2" data-text="Melee, Heavy Weapon">Melee, Heavy Weapon</td>
        <td>-2</td>
      </tr>
      <tr>
        <td><input type="radio" name="action" value="2" data-text="Melee, Light or Finesse Weapon">Melee, Light or Finesse Weapon</td>
        <td>+2</td>
      </tr>
      <tr>
        <td><input type="radio" name="action" value="-2" data-text="Melee, Two-Handed Weapon">Melee, Two-Handed Weapon</td>
        <td>-2</td>
      </tr>
      <tr>
        <td><input type="radio" name="action" value="-5" data-text="Ranged, Loading Weapon">Ranged, Loading Weapon</td>
        <td>-5</td>
      </tr>
      <tr>
        <td><input type="radio" name="action" value="-2" data-text="Swap Equipment">Swap Equipment</td>
        <td>-2</td>
      </tr>
      <tr>
        <td><input type="radio" name="action" value="-2" data-text="Retrieve Item at Hand">Retrieve Item at Hand</td>
        <td>-2</td>
      </tr>
      <tr>
        <td><input type="radio" name="action" value="-5" data-text="Retrieve Stowed Item">Retrieve Stowed Item</td>
        <td>-5</td>
      </tr>
      <tr>
        <td><input type="radio" name="action" value="-2" data-text="Slow Action">Slow Action</td>
        <td>-2</td>
      </tr>
      <tr>
        <td><input type="radio" name="action" value="-5" data-text="Very Slow Action">Very Slow Action</td>
        <td>-5</td>
      </tr>
      <tr>
        <td><input type="radio" name="action" value="0" checked="checked" data-text="Medium Action">Medium Action</td>
        <td>+0</td>
      </tr>
      <tr>
        <td><input type="radio" name="action" value="2" data-text="Fast Action">Fast Action</td>
        <td>+2</td>
      </tr>
      <tr>
        <td><input type="radio" name="action" value="5" data-text="Very Fast Action">Very Fast Action</td>
        <td>+5</td>
      </tr>
    </table>
  </div>
  Roll: <span id="initiative-roll"></span>  <br/>

  Modifier: <span id="initiative-modifier"></span>  <br/>

  Total Initiative: <span id="initiative-total"></span>
  <div class="clear"></div>
  <br/>
  <input style="margin-left: 460px;" type="button" id="calculate" value="Roll Initiative">
  <br/>
  <br/>
  <div class="dm-view hide" id="dm-view">
    <table id="results">
      <thead><th>Name</th><th>Initiative</th><th>Size</th><th>Action</th><th>Dex Mod</th></thead>
    </table>
    <br/>
    <input type="button" id="clear-order" value="Clear">
  </div>
</div>
</body>