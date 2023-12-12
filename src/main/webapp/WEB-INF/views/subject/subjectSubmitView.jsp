<%@ page contentType="text/html;charset=UTF-8" language="java"
pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@include
file="../header_footer/header.jspf" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>글 내용 보기</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script
      src="https://kit.fontawesome.com/6caf283963.js"
      crossorigin="anonymous"
    ></script>
    <style>
      ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
      }

      article {
        width: 1200px;
        margin: 0 auto;
        margin-top: 30px;
        border-width: 3px 1px 3px 1px;
        border-style: solid;
        border-color: #73351f;
        background: #f2f2f2;
      }

      .board_category {
        background-color: #ddd;
        width: 170px;
        text-align: center;
        border-radius: 10px;
      }

      .board_title {
        display: flex;
        text-align: center;
        align-items: center;
        height: 80px;
        font-size: 2em;
        font-weight: bold;
        border-bottom: 2px solid #73351f;
        padding-left: 20px;
        background: #a69668;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
      }

      /* 게시물 정보( 작성자, 날짜, 조회수, 추천수) */
      .board_main {
        border-bottom: 3px solid #73351f;
        border-top: 3px solid #73351f;
        border-left: 1px solid #73351f;
        border-right: 1px solid #73351f;
      }

      .board_info {
        display: flex;
        background: #d9c8a9;
        align-items: center;
        height: 30px;
      }

      .board_writer {
        display: flex;
        padding-right: 10px;

        text-align: center;
      }

      .board_date {
        padding-left: 10px;
        border-left: 1px solid darkgray;
      }

      .board_info > div:nth-child(n + 3) {
        padding-left: 10px;
      }

      .board_view {
        width: 70px;
        text-align: center;
        margin: auto 0 0 auto;
      }

      .board_recommend {
        width: 70px;
        text-align: center;
      }

      /* 게시글 내용 */
      .board_content {
        margin-top: 10px;
      }

      .content_text {
        padding: 10px 20px;
        min-height: 300px;
      }

      .content_recommend {
        width: 80px;
        margin: 0 auto;
        margin-bottom: 20px;
      }

      /* 댓글쓰기 */
      .comment_write {
        margin-top: 15px;
        display: flex;
        border-bottom: 1px solid #ddd;
      }

      .comment_content {
        border: 1px solid #ddd;
        width: 90%;
        height: 100px;
        min-height: 100px;
      }

      .comment_write_ok {
        width: 10%;
        height: 100px;
      }

      /* 댓글 리스트 */
      .comment_main {
      }

      .comment_list {
      }

      .comment_list li {
        float: none;
      }

      .comment_list_content {
        background: #a69668;
        border: 0.5px #73351f solid;
        margin-bottom: 5px;
      }

      .list_img {
        width: 50px;
        height: 50px;
        border-radius: 15px;
      }

      .comment_writer,
      .comment_date {
        display: inline-block;
      }

      .comment_writer {
        padding: 0 5px;
      }

      .reply_content {
        background: #d9d9d9;
        display: flex;
      }

      .reply {
        padding: 10px;
        width: 85%;
      }

      .container_bottom {
        display: flex;
        background: #a69668;
        height: 10px;
        margin-top: 10px;
      }

      .reply_btn {
        display: flex;
        align-items: flex-start;
        width: fit-content;
      }
      .memberlist {
        display: flex;
      }
      .membername {
        margin: 0 5px;
      }
      figure img{
        max-width: 1116px;
      }
    </style>
  </head>
  <body>
    <article>
      <div class="board_title" style="text-align: center">
        과제명 : ${svo.subjecttitle}
      </div>
      <section style="padding: 20px">
        <div class="board_category" style="margin-bottom: 20px">
          기업과제 제출 게시판
        </div>
        <div class="board_main">
          <div class="board_info">
            <div class="board_writer">
              <a
                href="${pageContext.servletContext.contextPath}/profile/portfolio?uid=${avo.user_userid}"
                >${avo.username}</a
              >
            </div>
            <div class="board_date">
              <c:if test="${avo.isteam==1}"> </c:if>
              <c:if test="${avo.isteam==0}"> 파티명 : ${partyname}&nbsp </c:if>
            </div>
          </div>

          <div class="board_content">
            <div class="content_text">${avo.applycontent}</div>
            <div class="memberlist" style="margin-left: 20px">
              <c:if test="${avo.isteam==0}">
                <div class="membername">
                  참여 인원 :
                  <c:forEach var="uvo" items="${member}">
                    <a
                      class="badge rounded-pill bg-primary"
                      style="color: white; font-size: 15px"
                      href="${pageContext.servletContext.contextPath}/profile/portfolio?uid=${uvo.userid}"
                      >${uvo.username}</a
                    >
                  </c:forEach>
                </div>
              </c:if>
            </div>
            <div
              class="content_recommend"
              style="
                width: 100%;
                display: flex;
                justify-content: space-between;
                align-items: center;
              "
            >
              <div></div>
              <button
                type="button"
                class="btn btn-success"
                onclick="location.href='${pageContext.servletContext.contextPath}/subject/view?no=${avo.subject_subjectid}'"
              >
                해당 기업과제 공고보기
              </button>
              <div class="d-flex" style="margin-right: 10px">
                <c:if test="${LogStatus=='Y'}">
                  <a
                    style="height: fit-content; margin-right: 10px"
                    class="btn btn-outline-danger btn-sm"
                    id="report_post"
                    >게시글 신고</a
                  >
                </c:if>
                <c:if test="${LogId==avo.user_userid}">
                  <a
                    style="height: fit-content"
                    class="btn btn-outline-danger btn-sm"
                    id="del_post"
                    >게시글 삭제</a
                  >
                </c:if>
              </div>
            </div>
          </div>
        </div>
      </section>
      <hr style="border: 2px dashed #73351f" />
      <script>
        $(function () {

            $("#del_post").on('click', function () {
                if (confirm("정말 글을 삭제하시겠습니까?")) {
                    var target_id = ${avo.applyid};
                    $.ajax({
                        url: "${pageContext.servletContext.contextPath}/subject/applydel",
                        data: {
                            applyid: target_id
                        },
                        type: 'post',
                        success: function (result) {
                            alert("삭제되었습니다.");
                            location.href = "${pageContext.servletContext.contextPath}/subject/apply";
                        },
                        error: function (error) {
                            console.log(error.responseText);
                        }
                    });
                }
            });

            $("#report_post").on('click', function () {
                if (confirm("정말 글을 신고하시겠습니까?")) {
                    $.ajax({
                        url: "${pageContext.servletContext.contextPath}/subject/applyreport",
                        data: {
                            target_id:${avo.applyid},
                            target_userid: '${avo.user_userid}'
                        },
                        type: 'post',
                        success: function (result) {
                            alert("신고되었습니다");
                        },
                        error: function (error) {
                            console.log(error.responseText);
                        }

                    });
                }

            });
        });
      </script>
      <div class="container_bottom"></div>
    </article>
    <footer></footer>
  </body>
</html>
<%@include file="../header_footer/footer.jspf" %>
