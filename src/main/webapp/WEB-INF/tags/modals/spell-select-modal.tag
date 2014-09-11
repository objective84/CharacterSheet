<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>

<div id="spell-select-modal">
    <span>Sort By: </span><select id="sort-by">
    <option id="by-Level">Level</option>
    <option id="by-school">School</option>
</select>
    <select id="spell-class-select">
        <option value="0">All Classes</option>
        <c:forEach items="${spellcasters}" var="clazz">
            <option value="${clazz.id}">${clazz.name}</option>
        </c:forEach>
    </select>
    <div class="table_container">
        <div class = "side-by-side" id="spell-school-tabs">
            <ul>
                <li><a id="tab-abjuration" href="#abjuration" class="spell-school-tab">Abjuration</a></li>
                <li><a id="tab-conjuration" href="#conjuration" class="spell-school-tab">Conjuration</a></li>
                <li><a id="tab-divination" href="#divination" class="spell-school-tab">Divination</a></li>
                <li><a id="tab-enchantment" href="#enchantment" class="spell-school-tab">Enchantment</a></li>
                <li><a id="tab-evocation" href="#evocation" class="spell-school-tab">Evocation</a></li>
                <li><a id="tab-illusion" href="#illusion" class="spell-school-tab">Illusion</a></li>
                <li><a id="tab-necromancy" href="#necromancy" class="spell-school-tab">Necromancy</a></li>
                <li><a id="tab-transmutation" href="#transmutation" class="spell-school-tab">Transmutation</a></li>
            </ul>
            <div id="abjuration"></div>
            <div id="conjuration"></div>
            <div id="divination"></div>
            <div id="enchantment"></div>
            <div id="evocation"></div>
            <div id="illusion"></div>
            <div id="necromancy"></div>
            <div id="transmutation"></div>
        </div>
        <div class="side-by-side" id="spell-level-tabs">
            <ul>
                <li><a id="tab-cantrip" href="#level-cantrip" class="spell-level-tab">Cantrips</a></li>
                <li><a id="tab-one" href="#level-one" class="spell-level-tab">First Level</a></li>
                <li><a id="tab-two" href="#level-two" class="spell-level-tab">Second Level</a></li>
                <li><a id="tab-three" href="#level-three" class="spell-level-tab">Third Level</a></li>
                <li><a id="tab-four" href="#level-four" class="spell-level-tab">Fourth Level</a></li>
                <li><a id="tab-five" href="#level-five" class="spell-level-tab">Fifth Level</a></li>
                <li><a id="tab-six" href="#level-six" class="spell-level-tab">Sixth Level</a></li>
                <li><a id="tab-seven" href="#level-seven" class="spell-level-tab">Seventh Level</a></li>
                <li><a id="tab-eight" href="#level-eight" class="spell-level-tab">Eighth Level</a></li>
                <li><a id="tab-nine" href="#level-nine" class="spell-level-tab">Ninth Level</a></li>
            </ul>
            <div id="level-cantrip"></div>
            <div id="level-one"></div>
            <div id="level-two"></div>
            <div id="level-three"></div>
            <div id="level-four"></div>
            <div id="level-five"></div>
            <div id="level-six"></div>
            <div id="level-seven"></div>
            <div id="level-eight"></div>
            <div id="level-nine"></div>
        </div>
        <div id='spell-preview' class="side-by-side">
            <div id="spell-preview-text"></div>
        </div>
        <table id="selected-spells">

        </table>
    </div>
</div>
