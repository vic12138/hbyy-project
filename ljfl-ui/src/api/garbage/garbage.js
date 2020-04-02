import request from '@/utils/request'

// 查询垃圾分类列表
export function listGarbage(query) {
  return request({
    url: '/garbage/list',
    method: 'get',
    params: query
  })
}

// 查询垃圾分类详细
export function getGarbage(id) {
  return request({
    url: '/garbage/' + id,
    method: 'get'
  })
}

// 新增垃圾分类
export function addGarbage(data) {
  return request({
    url: '/garbage',
    method: 'post',
    data: data
  })
}

// 修改垃圾分类
export function updateGarbage(data) {
  return request({
    url: '/garbage',
    method: 'put',
    data: data
  })
}

// 删除垃圾分类
export function delGarbage(id) {
  return request({
    url: '/garbage/' + id,
    method: 'delete'
  })
}

// 导出垃圾分类
export function exportGarbage(query) {
  return request({
    url: '/garbage/export',
    method: 'get',
    params: query
  })
}


// 查询垃圾分类总数
export function getGarbageCount() {
  return request({
    url: '/garbage/getCount',
    method: 'get'
  })
}
