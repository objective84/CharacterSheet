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
  <table>
    <tr>
      <table>
        <tr>
          <td> Name </td><td><input type="text" value="" id="character-name" placeholder="Name"></td>
        </tr>
        <tr>
          <td>Dex Mod </td><td><input type="text" value="" id="character-dex" placeholder="Dex Mod"></td>
        </tr>
      </table>
    </tr>
    <td>
      <table class="initiative-order" id="results">
        <thead><th>Name</th><th>Initiative</th></thead>
      </table>
    </td>
    </tr>
    <tr>
      <td>
        <input type="checkbox" id="dm-view">DM
        <h2>Size Modifiers to Initiative</h2>
        <div id="size-modifiers">
          <table class="table-border">
            <th>Creature Size</th> <th>Initiative Modifier</th>
            <tr><td><input type="radio" name="size" value="5">Tiny</td><td>+5</td></tr>
            <tr><td><input type="radio" name="size" value="2">Small</td><td>+2</td></tr>
            <tr><td><input type="radio" name="size" value="0">Medium</td><td>0</td></tr>
            <tr><td><input type="radio" name="size" value="-2">Large</td><td>-2</td></tr>
            <tr><td><input type="radio" name="size" value="-5">Huge</td><td>-5</td></tr>
            <tr><td><input type="radio" name="size" value="-8">Gargantuan</td><td>-8</td></tr>
          </table>
        </div>
        <div id="action-modifiers">
          <h2>Action Speed Factors</h2>
          <table class="table-border">
            <th>Creature Size</th><th>Initiative Modifier</th>
            <tr>
              <td><input type="radio" name="action" id="spellcasting">Spellcasting</td>
              <td><input style="width: 70px" type="text" value="" id="spell-level" placeholder="Spell Level"></td>
            </tr>
            <tr>
              <td><input type="radio" name="action" value="-2"> Melee, Heavy Weapon</td>
              <td>-2</td>
            </tr>
            <tr>
              <td><input type="radio" name="action" value="2">Melee, Light or Finesse Weapon</td>
              <td>+2</td>
            </tr>
            <tr>
              <td><input type="radio" name="action" value="-2">Melee, Two-Handed Weapon</td>
              <td>-2</td>
            </tr>
            <tr>
              <td><input type="radio" name="action" value="-5">Ranged, Loading Weapon</td>
              <td>-5</td>
            </tr>
            <tr>
              <td><input type="radio" name="action" value="-2">Swap Equipment</td>
              <td>-2</td>
            </tr>
            <tr>
              <td><input type="radio" name="action" value="-2">Retrieve Item at Hand</td>
              <td>-2</td>
            </tr>
            <tr>
              <td><input type="radio" name="action" value="-5">Retrieve Stowed Item</td>
              <td>-5</td>
            </tr>
            <tr>
              <td><input type="radio" name="action" value="-2">Slow Action</td>
              <td>-2</td>
            </tr>
            <tr>
              <td><input type="radio" name="action" value="-5">Very Slow Action</td>
              <td>-5</td>
            </tr>
            <tr>
              <td><input type="radio" name="action" value="0">Medium Action</td>
              <td>+0</td>
            </tr>
            <tr>
              <td><input type="radio" name="action" value="2">Fast Action</td>
              <td>+2</td>
            </tr>
            <tr>
              <td><input type="radio" name="action" value="5">Very Fast Action</td>
              <td>+5</td>
            </tr>
          </table>
        </div>
        <br/>
        <input type="button" id="calculate" value="Roll Initiative">
        <br/>
        <br/>
        Roll: <span id="initiative-roll"></span>  <br/>

        Modifier: <span id="initiative-modifier"></span>  <br/>

        Total Initiative: <span id="initiative-total"></span>
      </td>
    </tr>
  </table>
</div>
</table>
</body>