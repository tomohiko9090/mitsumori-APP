console.log("ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ")
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


