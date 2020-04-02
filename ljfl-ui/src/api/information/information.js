import request from '@/utils/request'

// 查询资讯管理列表
export function listInformation(query) {
  return request({
    url: '/information/list',
    method: 'get',
    params: query
  })
}

// 查询资讯管理详细
export function getInformation(id) {
  return request({
    url: '/information/' + id,
    method: 'get'
  })
}

// 新增资讯管理
export function addInformation(data) {
  return request({
    url: '/information',
    method: 'post',
    data: data
  })
}

// 修改资讯管理
export function updateInformation(data) {
  return request({
    url: '/information',
    method: 'put',
    data: data
  })
}

// 删除资讯管理
export function delInformation(id) {
  return request({
    url: '/information/' + id,
    method: 'delete'
  })
}

// 导出资讯管理
export function exportInformation(query) {
  return request({
    url: '/information/export',
    method: 'get',
    params: query
  })
}

// 查询资讯总条数
export function getInformationCount() {
  return request({
    url: '/information/getInfoCount',
    method: 'get'
  })
}

// 查询资讯观看总条数
export function getInformationViewCount() {
  return request({
    url: '/information/getInfoViewCount',
    method: 'get'
  })
}

// 查询线形图资讯数据
export function getInformationLine() {
  return request({
    url: '/information/getInfoLine',
    method: 'get'
  })
}
