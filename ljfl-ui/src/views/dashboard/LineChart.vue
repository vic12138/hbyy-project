<template>
  <div :class="className" :style="{height:height,width:width}" />
</template>

<script>
import echarts from 'echarts'
require('echarts/theme/macarons') // echarts theme
import resize from './mixins/resize'
import request from '@/utils/request'

export default {
  mixins: [resize],
  props: {
    className: {
      type: String,
      default: 'chart'
    },
    width: {
      type: String,
      default: '100%'
    },
    height: {
      type: String,
      default: '350px'
    },
    autoResize: {
      type: Boolean,
      default: true
    },
    chartData: {
      type: Object,
      required: true
    }
  },
  data() {
    return {
      chart: null,
      times:[],
      pushNumbers:[]
    }
  },
  // created() {
  //   this.getLine();
  // },
  watch: {
    chartData: {
      deep: true,
      handler(val) {
        this.setOptions(val)
      }
    }
  },
  mounted() {
    this.$nextTick(() => {
      this.initChart()
    })
  },
  beforeDestroy() {
    if (!this.chart) {
      return
    }
    this.chart.dispose()
    this.chart = null
  },
  methods: {
    initChart() {
      this.chart = echarts.init(this.$el, 'macarons');
      this.setOptions(this.chartData)
    },
    setOptions({ times, pushNumbers}) {
      this.chart.setOption({
        xAxis: {
          // data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
          data:times,
          boundaryGap: false,
          axisTick: {
            show: false
          }
        },
        grid: {
          left: 10,
          right: 10,
          bottom: 20,
          top: 30,
          containLabel: true
        },
        tooltip: {
          trigger: 'axis',
          axisPointer: {
            type: 'cross'
          },
          padding: [5, 10]
        },
        yAxis: {
          axisTick: {
            show: false
          }
        },
        legend: {
          data: ['发布资讯数', 'actual']
        },
        series: [{
          name: '发布资讯数', itemStyle: {
            normal: {
              color: '#FF005A',
              lineStyle: {
                color: '#FF005A',
                width: 2
              }
            }
          },
          smooth: true,
          type: 'line',
          // data: expectedData,
          data:pushNumbers,
          animationDuration: 2800,
          animationEasing: 'cubicInOut'
        },
        // {
        //   name: 'actual',
        //   smooth: true,
        //   type: 'line',
        //   itemStyle: {
        //     normal: {
        //       color: '#3888fa',
        //       lineStyle: {
        //         color: '#3888fa',
        //         width: 2
        //       },
        //       areaStyle: {
        //         color: '#f3f8ff'
        //       }
        //     }
        //   },
        //   data: actualData,
        //   animationDuration: 2800,
        //   animationEasing: 'quadraticOut'
        // }
        ]
      })
    },
    // 查询线形图资讯数据
    getInformationLine:function getInformationLine() {
      return request({
        url: '/information/getInfoLine',
        method: 'get'
      })
    },
    //获取线性图
    // getLine:function getLine(){
    //   let times = [];
    //   let pushNumbers = [];
    //   // 获取线形图数据
    //   request({
    //     url: '/information/getInfoLine',
    //     method: 'get'
    //   }).then(response =>{
    //     var list = response.data;
    //     for(var i = 0;i < list.length;i++){
    //       times.push(list[i].time);
    //       pushNumbers.push(list[i].pushNumber);
    //     }
    //     console.log(times);
    //     console.log(pushNumbers);
    //   });
    // }
  }
}
</script>
