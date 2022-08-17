/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/main.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/main.js":
/*!**************************************!*\
  !*** ./app/javascript/packs/main.js ***!
  \**************************************/
/*! no static exports found */
/***/ (function(module, exports) {

var app = Vue.createApp({
  data: function data() {
    return {
      activeTab: 'tabs-1',
      tabs: [{
        name: 'tabs-1',
        text: '未着手'
      }, {
        name: 'tabs-2',
        text: '実施中'
      }, {
        name: 'tabs-3',
        text: '完了'
      }]
    };
  }
});
var vm = app.mount("#app"); // var timer1; //タイマーを格納する変数（タイマーID）の宣言
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

var access_time = new Date();
console.log(access_time);
var min_time = 3 / 60 / 1000; //3分をミリ秒にしたもの

var countdown = setInterval(function () {
  var now = new Date(); //今の日時
  // const target = new Date("2022/9/11 1:00:00")   //最初にアクセスした時間

  var elapsed_time = access_time - now; //カウントアップ

  console.log(elapsed_time);
  var remainTime = min_time - elapsed_time; //差分を取る（ミリ秒で返ってくる
  //指定の日時を過ぎていたら処理をしない

  if (remainTime < 0) return false; //差分の日・時・分・秒を取得
  // const difDay  = Math.floor(remainTime / 1000 / 60 / 60 / 24)
  // const difHour = Math.floor(remainTime / 1000 / 60 / 60 ) % 24

  var difMin = Math.floor(remainTime / 1000 / 60) % 60;
  var difSec = Math.floor(remainTime / 1000) % 60; //残りの日時を上書き
  // document.getElementById("countdown-day").textContent  = difDay
  // document.getElementById("countdown-hour").textContent = difHour

  document.getElementById("countdown-min").textContent = difMin;
  document.getElementById("countdown-sec").textContent = difSec; //指定の日時になればカウントを止める

  if (remainTime < 0) clearInterval(countdown);
}, 1000); //1秒間に1度処理

/***/ })

/******/ });
//# sourceMappingURL=main-236560c4ca66cc30c2a9.js.map