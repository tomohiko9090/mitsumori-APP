const app = Vue.createApp({
  data(){
      return {
          activeTab: 'tabs-1',
          tabs: [
              {name:'tabs-1', text: '未着手'},
              {name:'tabs-2', text: '実施中'},
              {name:'tabs-3', text: '完了'},
          ],
      }
  },
})
const vm = app.mount("#app")





// var timer1; //タイマーを格納する変数（タイマーID）の宣言

// //カウントダウン関数を1000ミリ秒毎に呼び出す関数
// function cntStart()
// {
//   document.timer.elements[2].disabled=true;
//   timer1=setInterval("countDown()",1000);
// }

// //タイマー停止関数
// function cntStop()
// {
//   document.timer.elements[2].disabled=false;
//   clearInterval(timer1);
// }

// //カウントダウン関数
// function countDown()
// {
//   var min=document.timer.elements[0].value;
//   var sec=document.timer.elements[1].value;
  
//   if( (min=="") && (sec=="") )
//   {
//     alert("時刻を設定してください！");
//     reSet();
//   }
//   else
//   {
//     if (min=="") min=0;
//     min=parseInt(min);
    
//     if (sec=="") sec=0;
//     sec=parseInt(sec);
    
//     tmWrite(min*60+sec-1);
//   }
// }

// //残り時間を書き出す関数
// function tmWrite(int)
// {
//   int=parseInt(int);
  
//   if (int<=0)
//   {
//     reSet();
//     alert("時間です！");
//   }
//   else
//   {
//     //残り分数はintを60で割って切り捨てる
//     document.timer.elements[0].value=Math.floor(int/60);
//     //残り秒数はintを60で割った余り
//     document.timer.elements[1].value=int % 60;
//   }
// }

// //フォームを初期状態に戻す（リセット）関数
// function reSet()
// {
//   document.timer.elements[0].value="0";
//   document.timer.elements[1].value="0";
//   document.timer.elements[2].disabled=false;
//   clearInterval(timer1);
// }  



let countdown = setInterval(function(){
    const now = new Date()  //今の日時
    // const target = new Date(now.getFullYear(), now.getMonth() + 1, 0,'23','59','59') //ターゲット日時を取得
    const target = new Date("2022/9/11 1:00:00")    
    console.log(target)
    const remainTime = target - now  //差分を取る（ミリ秒で返ってくる

    //指定の日時を過ぎていたら処理をしない
    if(remainTime < 0) return false 

    //差分の日・時・分・秒を取得
    const difDay  = Math.floor(remainTime / 1000 / 60 / 60 / 24)
    const difHour = Math.floor(remainTime / 1000 / 60 / 60 ) % 24
    const difMin  = Math.floor(remainTime / 1000 / 60) % 60
    const difSec  = Math.floor(remainTime / 1000) % 60

    //残りの日時を上書き
    document.getElementById("countdown-day").textContent  = difDay
    document.getElementById("countdown-hour").textContent = difHour
    document.getElementById("countdown-min").textContent  = difMin
    document.getElementById("countdown-sec").textContent  = difSec

    //指定の日時になればカウントを止める
    if(remainTime < 0) clearInterval(countdown)

}, 1000)    //1秒間に1度処理