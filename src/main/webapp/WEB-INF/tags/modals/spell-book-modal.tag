<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>

<div id="spell-book-modal">
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
    <input id="spell-search">
    <div class="table_container">
        <div class = "side-by-side" id="spell-school-tabs">
            <ul id="schools">
                <li><a id="tab-abjuration" href="#abjuration" class="spell-school-tab">Abjuration</a></li>
                <li><a id="tab-conjuration" href="#conjuration" class="spell-school-tab">Conjuration</a></li>
                <li><a id="tab-divination" href="#divination" class="spell-school-tab">Divination</a></li>
                <li><a id="tab-enchantment" href="#enchantment" class="spell-school-tab">Enchantment</a></li>
                <li><a id="tab-evocation" href="#evocation" class="spell-school-tab">Evocation</a></li>
                <li><a id="tab-illusion" href="#illusion" class="spell-school-tab">Illusion</a></li>
                <li><a id="tab-necromancy" href="#necromancy" class="spell-school-tab">Necromancy</a></li>
                <li><a id="tab-transmutation" href="#transmutation" class="spell-school-tab">Transmutation</a></li>
            </ul>
            <div id="abjuration" class="spell-tab" data-tab="tab-abjuration"></div>
            <div id="conjuration" class="spell-tab" data-tab="tab-conjuration"></div>
            <div id="divination" class="spell-tab" data-tab="tab-divination"></div>
            <div id="enchantment" class="spell-tab" data-tab="tab-enchantment"></div>
            <div id="evocation" class="spell-tab" data-tab="tab-evocation"></div>
            <div id="illusion" class="spell-tab" data-tab="tab-illusion"></div>
            <div id="necromancy" class="spell-tab" data-tab="tab-necromancy"></div>
            <div id="transmutation" class="spell-tab" data-tab="tab-transmutation"></div>
        </div>
        <div class="side-by-side" id="spell-level-tabs">
            <ul id="levels">
                <li><a id="tab-cantrip" href="#level-cantrip" class="spell-level-tab">Cantrips</a></li>
                <li><a id="tab-one" href="#level-one" class="spell-level-tab">1st Level</a></li>
                <li><a id="tab-two" href="#level-two" class="spell-level-tab">2nd Level</a></li>
                <li><a id="tab-three" href="#level-three" class="spell-level-tab">3rd Level</a></li>
                <li><a id="tab-four" href="#level-four" class="spell-level-tab">4th Level</a></li>
                <li><a id="tab-five" href="#level-five" class="spell-level-tab">5th Level</a></li>
                <li><a id="tab-six" href="#level-six" class="spell-level-tab">6th Level</a></li>
                <li><a id="tab-seven" href="#level-seven" class="spell-level-tab">7th Level</a></li>
                <li><a id="tab-eight" href="#level-eight" class="spell-level-tab">8th Level</a></li>
                <li><a id="tab-nine" href="#level-nine" class="spell-level-tab">9th Level</a></li>
            </ul>
            <div id="level-cantrip" class="spell-tab" data-tab="tab-cantrip"></div>
            <div id="level-one" class="spell-tab" data-tab="tab-one"></div>
            <div id="level-two" class="spell-tab" data-tab="tab-two"></div>
            <div id="level-three" class="spell-tab" data-tab="tab-three"></div>
            <div id="level-four" class="spell-tab" data-tab="tab-four"></div>
            <div id="level-five" class="spell-tab" data-tab="tab-five"></div>
            <div id="level-six" class="spell-tab" data-tab="tab-six"></div>
            <div id="level-seven" class="spell-tab" data-tab="tab-seven"></div>
            <div id="level-eight" class="spell-tab" data-tab="tab-eight"></div>
            <div id="level-nine" class="spell-tab" data-tab="tab-nine"></div>
        </div>
        <div class="side-by-side selected-spells-container">
            <input type="hidden" id="cantrips-selected" value="0"/>
            <div class="selected-spells-table">
                <table id="selected-spells-table">
                </table>
            </div>
            <input type="button" id="learn-spells" value="Learn">
        </div>
        <div id='spell-preview' class="side-by-side">
            <div id="spell-preview-text"></div>
        </div>
    </div>
</div>
