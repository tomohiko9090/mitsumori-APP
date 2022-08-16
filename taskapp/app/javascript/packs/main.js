const app = Vue.createApp({
  data(){
      return {
          activeTab: 'tabs-1',
          tabs: [
              {name:'tabs-1', text: '全タスク'},
              {name:'tabs-2', text: '本日のタスク'},
              {name:'tabs-3', text: '思考タスク'},
          ],
      }
  },
})
const vm = app.mount("#app")


let countdown = setInterval(function(){
    const now = new Date() 
    const elapsed_time = now - access_time //カウントアップ
    const remainTime = min_time - elapsed_time  //差分を取る（ミリ秒で返ってくる
  

    //指定の日時を過ぎていたら処理をしない
    if(remainTime < 0) return false 

    //差分の日・時・分・秒を取得
    let difMin  = Math.floor(remainTime / 1000 / 60) % 60
    let difSec  = Math.floor(remainTime / 1000) % 60

    if (String(difMin).length == 1){
      difMin =  "0" + String(difMin)
    }
    if (String(difSec).length == 1){
      difSec =  "0" + String(difSec)
    }

    //残りの日時を上書き
    document.getElementById("countdown-min").textContent = difMin;
    document.getElementById("countdown-sec").textContent = difSec;

    //指定の日時になればカウントを止める
    if(remainTime < 0) clearInterval(countdown)

}, 1000)    //1秒間に1度処理

var animateButton = function(e) {

  e.preventDefault;
  //reset animation
  e.target.classList.remove('animate');
  
  e.target.classList.add('animate');
  setTimeout(function(){
    e.target.classList.remove('animate');
  },700);
};

var bubblyButtons = document.getElementsByClassName("bubbly-button");

for (var i = 0; i < bubblyButtons.length; i++) {
  bubblyButtons[i].addEventListener('click', animateButton, false);
}

// ログイン画面
$('.message a').click(function(){
  $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});

