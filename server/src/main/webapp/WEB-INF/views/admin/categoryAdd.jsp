
<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="w3-container">
    <h2>Category Manage</h2>
    <p>you can manage this list</p>
    <a onclick="document.getElementById('id01').style.display='block'"  class="w3-button w3-black btn2">ADD</a>
    <ul class="w3-ul w3-card-4">
      <c:forEach var="category" items="${categoryList}">
        <li class="w3-bar">
          <div class="w3-bar-item" id = ${category.categoryId}>
            ${category.categoryName}

          </div>
          <div class="w3-bar-item" style="float: right">
            <a onclick="document.getElementById('id02').style.display='block'; edit.modal( '${category.categoryName}' ,'${category.description}' ,' ${category.categoryId}')" class="w3-button w3-black btn2 edit">EDIT</a>
          </div>
        </li>
      </c:forEach>
    </ul>
</div>
<div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom">
        <header class="w3-container w3-blue">
                   <span onclick="document.getElementById('id01').style.display='none';
"
                         class="w3-button w3-blue w3-xlarge w3-display-topright">&times;</span>
            <h2>카테고리 추가</h2>
        </header>
        <div id="London" class="w3-container city">
            <form class="w3-container">
                <h2>Category ADD</h2>
                <p>추가 할 카테고리를 입력해주세요 </p>
                <label for="categoryName"> Category Name </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "categoryName" style="width:30%">
                <label for="description"> Description </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "description" style="width:30%">
                <br>
                <button class="w3-btn w3-blue" onclick="category.save()">Add</button>
            </form>
        </div>
        <div class="w3-container w3-light-grey w3-padding">
            <button class="w3-button w3-right w3-white w3-border"
                    onclick="document.getElementById('id01').style.display='none'">Close</button>
        </div>
    </div>
</div>

<div id="id02" class="w3-modal modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom">
        <header class="w3-container w3-blue">
                   <span onclick="document.getElementById('id02').style.display='none'"
                         class="w3-button w3-blue w3-xlarge w3-display-topright">&times;</span>
            <h2>카테고리 수정</h2>
        </header>
        <div id="edit" class="w3-container city">
            <form class="w3-container">
                <h2>Category edit</h2>
                <p>수정 할 정보 </p>
                <input type="hidden" id ="categoryId">
                <label for="categoryName"> Category Name </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "categoryNameEdit"  style="width:30%">
                <label for="description"> Description </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "descriptionEdit" style="width:30%">
                <br>
                <button class="w3-btn w3-blue" onclick="category.update()">edit</button>
            </form>
        </div>
        <div class="w3-container w3-light-grey w3-padding">
            <button class="w3-button w3-right w3-white w3-border"
                    onclick="document.getElementById('id02').style.display='none'">Close</button>
        </div>
    </div>
</div>
</div>
<script src = "/js/category.js"></script>
<script>
    let edit = {
        modal : function (categoryName , description , categoryId) {
            console.log(categoryName);
            document.getElementById('categoryNameEdit').value = categoryName;
            document.getElementById('descriptionEdit').value = description;
            document.getElementById('categoryId').value = categoryId;
        }
    }







</script>

<%@ include file="../Layout/footer.jsp"%>
