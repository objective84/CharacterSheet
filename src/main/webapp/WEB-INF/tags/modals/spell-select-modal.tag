<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>

<div id="spell-select-modal">

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
            <div id="abjuration">

            </div>
            <div id="conjuration">

            </div>
            <div id="divination">

            </div>
            <div id="enchantment">

            </div>
            <div id="evocation">

            </div>
            <div id="illusion">

            </div>
            <div id="necromancy">

            </div>
            <div id="transmutation">

            </div>
        </div>
        <div id='spell-preview' class="side-by-side">
            <div id="spell-preview-text"></div>
        </div>
    </div>
</div>
