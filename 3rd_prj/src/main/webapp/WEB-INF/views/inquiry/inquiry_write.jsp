<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" itemscope="" itemtype="http://schema.org/Article"><head>
<link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/common1.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/common2.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/edwith.css" type="text/css">
<title>서비스 문의 : edwith</title>
</head>
    
<body class=" fs win chrome chrome120" cz-shortcut-listen="true">
<div id="wrap">
              
<div id="container">
    <div id="content">
        <section class="service_faq">
            <div class="faq_header">
                <h1 class="faq_tit">서비스 문의</h1>
                
                    <p class="faq_dsc">edwith 이용에 대해 궁금한 내용을 남겨주세요.<br>자주 질문하는 내용은 FAQ에 정리되어 있으니 참고해 주세요.</p>
                
            </div>
            <div class="faq_cont">
                <div class="faq_write_box">
                    <h2 class="heading_sjt">1:1 문의하기</h2>
                    <div class="write_tbl_box">
                        <table class="write_tbl">
                            <caption>
                                <span class="sr_only">1:1 문의하기</span>
                            </caption>
                            <colgroup>
                                <col style="width: 120px">
                                <col style="width: 420px">
                                <col style="width: 90px">
                                <col style="width: auto">
                            </colgroup>
                            <tbody><tr>
                                <th>
                                    <span class="sjt">문의유형</span>
                                </th>
                                <td>
                                    <div class="slt">
                                        <select class="_custom_slt" title="문의유형 선택" style="width: 224px; display: none;" data-voc-type="">
                                            <option value="" selected="">선택하기</option>
                                            <option value="INQUIRY">일반</option>
                                            <option value="ERROR">오류</option>
                                            
                                            <option value="PAYMENT">결제</option>
                                            
                                            
                                                <option value="PARTNERSHIP">제휴</option>
                                            
                                        </select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 224px;" title="문의유형 선택"><a class="chosen-single" tabindex="-1"><span>선택하기</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"></ul></div></div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <span class="sjt">제목</span>
                                </th>
                                <td colspan="3">
                                    <label for="title" class="it stretch">
                                        <span class="ph">제목을 입력하세요.</span>
                                        <input type="text" id="title" name="title" maxlength="50" data-title="" data-global-placeholder=".ph">
                                    </label>
                                </td>
                            </tr>
                            <tr class="_optional" style="display:none">
                                <th>
                                    <span class="sjt">운영체제</span>
                                </th>
                                <td>
                                    <div class="slt">
                                        <select class="_custom_slt" title="운영체제 선택" style="width: 224px; display: none;" data-os="">
                                            <option value="" selected="">선택하기</option>
                                            <option value="Window">Window</option>
                                            <option value="Mac">Mac</option>
                                            <option value="iOS">iOS</option>
                                            <option value="Android">Android</option>
                                            <option value="기타">기타</option>
                                        </select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 0px;" title="운영체제 선택"><a class="chosen-single" tabindex="-1"><span>선택하기</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"></ul></div></div>
                                    </div>
                                    <label for="os" class="it" style="display:none;width: 172px" data-os-etc="">
                                        <span class="ph">입력하세요.</span>
                                        <input type="text" id="os" name="os" data-os-input="" data-global-placeholder=".ph">
                                    </label>
                                </td>
                                <th>
                                    <span class="sjt">운영체제 버전</span>
                                </th>
                                <td>
                                    <label for="os_version" class="it" style="width: 224px">
                                        <span class="ph">10.13</span>
                                        <input type="text" id="os_version" name="os_version" data-os-version="" data-global-placeholder=".ph">
                                    </label>
                                </td>
                            </tr>
                            <tr class="_optional" style="display:none">
                                <th>
                                    <span class="sjt">브라우저</span>
                                </th>
                                <td>
                                    <div class="slt">
                                        <select class="_custom_slt" title="브라우저 선택" style="width: 224px; display: none;" data-browser="">
                                            <option value="" selected="">선택하기</option>
                                            <option value="Internet Explorer">Internet Explorer</option>
                                            <option value="Chrome">Chrome</option>
                                            <option value="Firefox">Firefox</option>
                                            <option value="Safari">Safari</option>
                                            <option value="Microsoft Edge">Microsoft Edge</option>
                                            <option value="Opera">Opera</option>
                                            <option value="기타">기타</option>
                                        </select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 0px;" title="브라우저 선택"><a class="chosen-single" tabindex="-1"><span>선택하기</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"></ul></div></div>
                                    </div>
                                    <label for="browser" class="it" style="display:none;width:172px" data-browser-etc="">
                                        <span class="ph">입력하세요.</span>
                                        <input type="text" id="browser" name="browser" data-browser-input="" data-global-placeholder=".ph">
                                    </label>
                                </td>
                                <th>
                                    <span class="sjt">브라우저 버전</span>
                                </th>
                                <td>
                                    <label for="browser_version" class="it" style="width: 224px">
                                        <span class="ph">65.0.3325.181</span>
                                        <input type="text" id="browser_version" name="browser_version" data-browser-version="" data-global-placeholder=".ph">
                                    </label>
                                </td>
                            </tr>
                            <tr style="display:none" data-payment-voc="">
                                <th>
                                    <span class="sjt">문의상세</span>
                                </th>
                                <td>
                                    <div class="slt">
                                        <select class="_custom_slt" title="문의유형 조건" style="width: 224px; display: none;" data-inquiry-type="">
                                            <option value="0" selected="">선택하기</option>
                                            <option value="1">결제 문의</option>
                                            <option value="2">환불 요청</option>
                                            <option value="3">기타</option>
                                        </select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 0px;" title="문의유형 조건"><a class="chosen-single" tabindex="-1"><span>선택하기</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"></ul></div></div>
                                    </div>
                                </td>
                                <th>
                                    <span class="sjt">결제번호</span>
                                </th>
                                <td>
                                    <label for="orderNum" class="it" style="width: 451px">
                                        <span class="ph">결제 내역에서 결제 번호를 확인하고, 입력하세요.</span>
                                        <input type="text" id="orderNum" name="orderNum" data-order-num="" data-global-placeholder=".ph" value="">
                                    </label>
                                </td>
                            </tr>
                            <tr style="display:none" data-payment-voc="">
                                <th>
                                    <span class="sjt">프로젝트명</span>
                                </th>
                                <td colspan="3">
                                    <label for="projectName" class="it stretch">
                                        <span class="ph">결제한 강좌의 프로젝트명을 입력하세요.</span>
                                        <input type="text" id="projectName" name="projectName" data-project-name="" data-global-placeholder=".ph" value="">
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <span class="sjt">이메일(필수)</span>
                                </th>
                                <td>
                                    <label for="contact_email" class="it" style="width: 500px">
                                        <span class="ph" style="display: none;">your_email@naver.com</span>
                                        <input type="text" value="princessk7@naver.com" id="contact_email" name="contact_email" data-contact-email="" data-global-placeholder=".ph">
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <span class="sjt">전화번호(선택)</span>
                                </th>
                                <td>
                                    <label for="contact_phone_number" class="it" style="width: 500px">
                                        <span class="ph">0100000000</span>
                                        <input type="text" id="contact_phone_number" name="contact_phone_number" data-contact-phone-number="" data-global-placeholder=".ph">
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <span class="sjt">내용</span>
                                </th>
                                <td colspan="3">
                                    <label class="it stretch">
                                        <span class="ph">문의 내용을 입력하세요.</span>
                                        <textarea cols="30" rows="5" style="height:320px" data-content="" data-global-placeholder=".ph"></textarea>
                                    </label>
                                    <!--첨부파일 목록-->
                                    <div class="add_link" style="display:none" data-attachments="">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <span class="sjt">첨부</span>
                                </th>
                                <td colspan="3">
                                    <div class="add_box">
                                        <label for="image" class="pic_label">
                                            <input type="file" id="image" name="myFile" class="_upload_input" data-type="Image" data-mimetype="image/*" data-maxfilesize="10485760" data-accept="png,jpg,jpeg,gif" accept=".png, .jpg, .jpeg, .gif" style="visibility: hidden">
                                        </label>
                                        <label for="file" class="file_label">
                                            <input type="file" id="file" name="myFile" class="_upload_input" data-type="Doc" data-accept="pdf,pptx,ppt,doc,hwp,xls,xlsx,xlsm,accdb,txt,swift,py,apk,rar,7z,tar,alz,tif,ent" accept=".pdf, .pptx, .ppt, .doc, .hwp, .xls, .xlsx, .xlsm, .accdb, .txt, .swift, .py, .apk, .rar, .7z, .tar, .alz, .tif, .ent" style="visibility: hidden">
                                        </label>
                                    </div>
                                </td>
                            </tr>
                        </tbody></table>
                        <div class="group_lr">
                            <div class="group_r">
                                <button type="button" class="btn btn_type1" data-cancel-btn="">취소</button>
                                <button type="button" class="btn btn_type1 on" data-save-btn="">등록</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

</div>

</body></html>