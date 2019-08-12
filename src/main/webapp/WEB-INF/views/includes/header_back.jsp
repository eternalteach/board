<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
      <div class="collapse navbar-collapse justify-content-end" id="navbar-collapse">
        <ul class="navbar-nav">
          <li class="nav-item active dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
              Introduce
              <i class="ion-chevron-down"></i>
            </a>
            <div class="dropdown-menu" role="menu">
              <a class="dropdown-item" href="${contextPath}/introduce_info">회사 소개</a>
              <a class="dropdown-item" href="${contextPath}/introduce_ozc">조직도</a>
              <a class="dropdown-item" href="${contextPath}/introduce_history">연혁</a>
              <a class="dropdown-item" href="${contextPath}/introduce_come">오시는 길</a>
              <a class="dropdown-item" href="${contextPath}/introduce_photo">사진</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
              	사업분야
              <i class="ion-chevron-down"></i>
            </a>
            <div class="dropdown-menu" role="menu">
              <a class="dropdown-item" href="${contextPath}/business_complete">완료된 사업</a>
              <a class="dropdown-item" href="${contextPath}/business_board">공지사항</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
              	제품소개
              <i class="ion-chevron-down"></i>
            </a>
            <div class="dropdown-menu" role="menu">
                  <a class="dropdown-item" href="${contextPath}/product_info">제품 소개</a>
                  <a class="dropdown-item" href="${contextPath}/product_qa">문의 사항</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link nav-link--rounded" href="${contextPath}">Staff Only 미구현</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>