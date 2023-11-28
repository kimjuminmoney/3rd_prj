<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="   " %>
<div class="snb_wrap min_1240" style="left: 0px;">
    <!--[D] window의 크기가 1240이상일때 snb_wrap에 min_1240 클래스 추가해주세요.-->
    <!--[D] 웨일클래스 에만 snb_wrap에 .whale 클래스 추가, 나머지는 삭제-->
    <div class="snb">
        <div class="snb_scroll">
            <div class="inner ">
                        <h1 class="bi_school">
                            <a href="/myPage/openClass?isHomeLogo=true">
                                <img src="https://ssl.pstatic.net/static/m/mooc/p/partner/next/logo_v4.png" height="24px" alt="edwith">
                            </a>
                        </h1>
                <div class="menu_area">
                    <ul role="tablist">
                        <!-- [D] 선택된 탭 li에 aria-selected="true" 추가해주세요 -->
                            <li role="tab" aria-selected="true" class="menu ico_home">
                                <a href="/myPage/home">
                                    <i>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                            <path fill="none" d="M3.5 17V6c0-.276.223-.5.5-.5h4.5c2.4 0 3.5 2.167 3.5 3v9H4c-.276 0-.5-.224-.5-.5z"></path>
                                            <path fill="#101214" fill-rule="evenodd" d="M4.125 6.125v10.75h7.25V8.5c0-.092-.037-.295-.157-.57-.115-.263-.293-.555-.535-.827-.478-.537-1.192-.978-2.183-.978H4.125zm7.492.147c.143.161.271.328.383.496.112-.168.24-.335.383-.496.672-.755 1.709-1.397 3.117-1.397H20.001c.622 0 1.124.505 1.124 1.125v11c0 .621-.504 1.125-1.125 1.125h-7.375V21h-1.25v-2.875H4c-.621 0-1.125-.504-1.125-1.125V6c0-.62.502-1.125 1.124-1.125H8.5c1.409 0 2.445.642 3.117 1.397zm1.008 10.603V8.5c0-.092.037-.295.157-.57.115-.263.293-.555.535-.827.478-.537 1.191-.978 2.183-.978H19.875v10.75h-7.25z" clip-rule="evenodd"></path>
                                        </svg>
                                    </i>나의 강좌
                                </a>
                            </li>
                            <!-- <li role="tab" aria-selected="false" class="menu ico_cal" data-pc-only-menu="" style="display: block;">
                                <a href="/myPage/courseCalendar">
                                    <i>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                            <path fill="#fff" d="M3.5 10c0-.276.224-.5.5-.5h16c.276 0 .5.224.5.5v10c0 .276-.224.5-.5.5H4c-.276 0-.5-.224-.5-.5V10z"></path>
                                            <path fill="#25292F" fill-rule="evenodd" d="M7.5 2.875c.345 0 .625.28.625.625v1.375h7.75V3.5c0-.345.28-.625.625-.625s.625.28.625.625v1.375H20c.621 0 1.125.504 1.125 1.125v14c0 .621-.504 1.125-1.125 1.125H4c-.621 0-1.125-.504-1.125-1.125V6c0-.621.504-1.125 1.125-1.125h2.875V3.5c0-.345.28-.625.625-.625zm8.375 3.25V7.5c0 .345.28.625.625.625s.625-.28.625-.625V6.125h2.75v2.75H4.125v-2.75h2.75V7.5c0 .345.28.625.625.625s.625-.28.625-.625V6.125h7.75zm-11.75 4v9.75h15.75v-9.75H4.125zm4.875 4H7v-1.25h2v1.25zm-2 3h2v-1.25H7v1.25zm6-3h-2v-1.25h2v1.25zm-2 3h2v-1.25h-2v1.25zm6-3h-2v-1.25h2v1.25zm-2 3h2v-1.25h-2v1.25z" clip-rule="evenodd"></path>
                                        </svg>
                                    </i>
                                    강좌 일정
                                </a>
                            </li> -->
                            <li role="tab" aria-selected="false" class="menu ico_todo" data-pc-only-menu="" style="display: block;">
                                <a href="/myPage/toDoList">
                                    <i>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                            <path fill="#fff" d="M8 15v-2.293c0-.133.053-.26.146-.353l7-7c.196-.196.512-.196.708 0l2.292 2.292c.196.196.196.512 0 .708l-7 7c-.093.093-.22.146-.353.146H8.5c-.276 0-.5-.224-.5-.5z"></path>
                                            <path fill="#000" fill-rule="evenodd" d="M16.704 2.912c.44-.44 1.152-.44 1.591 0l2.293 2.293c.44.439.44 1.151 0 1.59l-9.146 9.147-.183.183H7.375V12.24l.183-.183 9.146-9.146zm-8.079 9.847v2.116h2.116l6.625-6.625-2.116-2.116-6.625 6.625zm7.509-7.509l2.116 2.116L19.616 6 17.5 3.884 16.134 5.25zm-12.009.875H9.5v-1.25H4c-.621 0-1.125.504-1.125 1.125v14c0 .621.504 1.125 1.125 1.125h14c.621 0 1.125-.504 1.125-1.125v-7h-1.25v6.875H4.125V6.125z" clip-rule="evenodd"></path>
                                        </svg>
                                    </i>나의 할 일
                                </a>
                            </li>
                            
                            <li role="tab" aria-selected="false" class="menu ico_noti_edwith" data-pc-only-menu="" style="display: block;">
                                <a href="/myPage/newsList">
                                    <i>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                            <path fill="#fff" d="M19.25 18H4.75c-.138 0-.25-.112-.25-.25v-1.646c0-.067.026-.13.073-.177l1.854-1.854c.047-.047.073-.11.073-.177V11C6.5 9 8 5.5 12 5.5S17.5 9 17.5 11v2.896c0 .067.026.13.073.177l1.854 1.854c.047.047.073.11.073.177v1.646c0 .138-.112.25-.25.25z"></path>
                                            <path fill="#25292F" fill-rule="evenodd" d="M12.625 3v1.902c1.88.165 3.23 1.073 4.118 2.214.965 1.241 1.382 2.753 1.382 3.884v2.741l1.744 1.744c.164.164.256.386.256.619v1.646c0 .483-.392.875-.875.875h-4.127c-.066 1.668-1.439 3-3.123 3-1.684 0-3.057-1.332-3.123-3H4.75c-.483 0-.875-.392-.875-.875v-1.646c0-.232.092-.455.256-.62l1.744-1.743V11c0-1.131.417-2.643 1.382-3.884.887-1.141 2.238-2.049 4.118-2.214V3h1.25zm-2.496 15.625c.064.977.878 1.75 1.871 1.75s1.807-.773 1.87-1.75h-3.74zM8.243 7.884C7.458 8.893 7.125 10.13 7.125 11v2.896c0 .232-.092.455-.256.62l-1.744 1.743v1.116h13.75v-1.116l-1.744-1.744c-.164-.164-.256-.386-.256-.619V11c0-.869-.333-2.107-1.118-3.116C14.99 6.898 13.79 6.125 12 6.125c-1.791 0-2.99.773-3.757 1.759z" clip-rule="evenodd"></path>
                                        </svg>
                                    </i>내가본 시험
                                </a>
                            </li>
                            
                            <!-- <li role="tab" aria-selected="false" class="menu ico_video">
                                <a href="/myPage/recentlyPlayedList">
                                    <i>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                            <path fill="#fff" fill-rule="evenodd" d="M4.5 6c-.276 0-.5.224-.5.5v11c0 .276.224.5.5.5h15c.276 0 .5-.224.5-.5v-11c0-.276-.224-.5-.5-.5h-15zm6 3.67v4.66c0 .076.082.124.149.088l4.194-2.33c.068-.039.068-.137 0-.175l-4.194-2.33c-.067-.037-.149.01-.149.087z" clip-rule="evenodd"></path>
                                            <path fill="#25292F" fill-rule="evenodd" d="M4 4.875c-.621 0-1.125.504-1.125 1.125v12c0 .621.504 1.125 1.125 1.125h16c.621 0 1.125-.504 1.125-1.125V6c0-.621-.504-1.125-1.125-1.125H4zm.125 13V6.125h15.75v11.75H4.125zM13.713 12l-2.588 1.438v-2.876L13.713 12zm-2.76-2.964c-.484-.268-1.078.081-1.078.634v4.66c0 .553.594.902 1.077.634l4.194-2.33c.497-.277.497-.992 0-1.268l-4.194-2.33z" clip-rule="evenodd"></path>
                                        </svg>
                                    </i>최근 본 동영상
                                </a>
                            </li>
                            
                            
                                <li role="tab" aria-selected="false" class="menu ico_payment">
                                    <a href="/myPage/payList">
                                        <i>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                <path fill="#fff" d="M5.5 16.5V5c0-.276.224-.5.5-.5h9c.276 0 .5.224.5.5v7.5H18V19c0 .552-.448 1-1 1H9c-1.933 0-3.5-1.567-3.5-3.5z"></path>
                                                <path fill="#25292F" fill-rule="evenodd" d="M6.125 16.5V5.125h8.75v8h2.5V19c0 .207-.168.375-.375.375H9c-1.588 0-2.875-1.287-2.875-2.875zM6 3.875c-.621 0-1.125.504-1.125 1.125v11.5c0 2.278 1.847 4.125 4.125 4.125h8c.898 0 1.625-.727 1.625-1.625v-7.125h-2.5V5c0-.621-.504-1.125-1.125-1.125H6zM8 8.5h5V7.25H8V8.5zm5 2.5H8V9.75h5V11zm-5 2.5h3v-1.25H8v1.25z" clip-rule="evenodd"></path>
                                                <path fill="#fff" stroke="#25292F" stroke-width="1.25" d="M15.5 18v-5c0-.276.224-.5.5-.5h3c.276 0 .5.224.5.5v5c0 1.105-.895 2-2 2s-2-.895-2-2z"></path>
                                            </svg>
                                        </i>결제 내역
                                    </a>
                                </li> -->
                        <li role="tab" aria-selected="false" class="menu ico_inquiry">
                          <a href="#">
                            <i>
                              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path fill="#fff" d="M5 16.5V13l6.646-6.646c.196-.196.512-.196.708 0l2.792 2.792c.196.196.196.512 0 .708L8.5 16.5H5z"/>
                                <path fill="#85BDF2" fill-rule="evenodd" d="M13.704 3.412c.44-.44 1.152-.44 1.591 0l2.793 2.792c.44.44.44 1.152 0 1.591l-9.146 9.147-.183.183H4.375V12.74l.183-.183 9.146-9.146zm.796.972L12.884 6 15.5 8.616 17.116 7 14.5 4.384zm-8.875 8.875L12 6.884 14.616 9.5l-6.375 6.375H5.625v-2.616zM3.5 18.875v1.25h17v-1.25h-17z" clip-rule="evenodd"/>
                              </svg>
                            </i>문의하기</a>
                        </li>
                    </ul>
                </div>

                
            </div>

        </div>
        <button type="button" class="btn_snb open"><span class="blind">메뉴 닫기</span></button>
    </div>
</div>