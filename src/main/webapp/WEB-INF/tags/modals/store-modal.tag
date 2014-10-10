<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>

<div class="modal" id="store-modal">
    <input type="checkbox" class="filter" value="${filterByProficiency}"><span class="link-small">${filterByProficiency}</span>
    <div class="clear"></div>
    <div class="table_container">
        <table class="side-by-side" id="weapon-table">
            <tr>
                <th>Name</th><th>Damage</th><th>Price</th><th>Weight</th>
            </tr>
            <c:forEach items="${allWeapons}" var="weapon">
                <tr class="store-item-row">
                    <td>
                        <input type="checkbox" name="store-item" class='store-item' id="item_${weapon.id}" value="${weapon.id}">
                        <span>${weapon.name}</span>
                    </td>
                    <td><span>${weapon.numberOfDice}${weapon.damageDice.name}</span></td>
                    <td><span>${weapon.price} ${weapon.priceDenomination.abbr}</span></td>
                    <td><span>${weapon.itemWeight}</span></td>
                </tr>
            </c:forEach>
        </table>
        <table class="side-by-side" id="armor-table">
            <tr>
                <th>Name</th><th>AC</th><th>Strength</th><th>Stealth</th><th>Price</th><th>Weight</th>
            </tr>
            <c:forEach items="${allArmor}" var="armor">
                <tr class="store-item-row">
                    <td>
                        <input type="checkbox" name="store-item" class='store-item' id="item_${armor.id}" value="${armor.id}">
                        <span>${armor.name}</span>
                    </td>
                    <td><span>${armor.armorClass}</span></td>
                    <td><span>${armor.strength}</span></td>
                    <td><span>${armor.stealthDisadvantage == true ? 'Yes' : ''}</span></td>
                    <td><span>${armor.price} ${armor.priceDenomination.abbr}</span></td>
                    <td><span>${armor.itemWeight}</span></td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div class="clear"></div>
    <input type="button" id="store-submit" value="Purchase">
</div>


